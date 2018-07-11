require 'rails_helper'

RSpec.describe PlayerCard, type: :model do
  let(:team_chemistry) do
    Chemistry.create(name: Team.city_and_team_name(team_city_or_team_name: :minnesota))
  end
  subject do
    described_class.new(
      first_name: 'John',
      last_name: 'Madden',
      position: 'qb',
      overall: 99,
      team_chemistry_id: team_chemistry.id)
  end

  # Associations
  it { is_expected.to belong_to :team_chemistry }
  it { is_expected.to have_many :player_card_chemistries }
  it { is_expected.to have_many :chemistries }

  # Validations
  it 'should validate that :game_version cannot be empty/falsy' do
    allow(subject).to receive(:set_default_game_version)
    expect(subject).to_not be_valid
  end
  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
  it { is_expected.to validate_presence_of :position }
  it { is_expected.to validate_inclusion_of(:position)
    .in_array(Position.abbreviations) }
  it { is_expected.to validate_inclusion_of(:overall).in_range(1..99) }
  it { is_expected.to validate_inclusion_of(:trait_covers_ball)
    .in_array(['Always', 'Brace for All Hits', 'Brace vs. Medium Hitters']) }
  it { is_expected.to validate_inclusion_of(:trait_plays_ball_in_air)
    .in_array(%w{ Aggressive Conservative Balanced }) }
  it { is_expected.to validate_inclusion_of(:trait_forces_passes)
    .in_array(%w{ Aggressive Ideal }) }
  it { is_expected.to validate_inclusion_of(:trait_senses_pressure)
    .in_array(['Trigger Happy', 'Ideal']) }

  it 'sets the game_version before validation on create' do
    expect(subject).to receive(:set_default_game_version).and_call_original
    expect(subject).to_not be_persisted
    subject.save
    expect(subject.reload.game_version).to eq(Mutreborn::Application::DEFAULT_GAME_VERSION)
  end

  describe "#full_name" do
    it 'prints the first and last name joined together by a space' do
      expect(subject.full_name).to eq('John Madden')
    end

    it 'trims off leading and trailing whitespace' do
      subject.last_name = 'Madden '
      expect(subject.full_name).to eq('John Madden')
    end

    it 'allows a blank first name' do
      subject.first_name = nil
      expect(subject.full_name).to eq('Madden')
    end

    it 'allows a blank last name' do
      subject.last_name = nil
      expect(subject.full_name).to eq('John')
    end
  end

  describe "#scorer" do
    before { subject.game_version = Mutreborn::Application::DEFAULT_GAME_VERSION }

    it 'initializes a scorer for itself' do
      expect(subject.scorer.position).to eq subject.position
      expect(subject.scorer.style).to eq subject.style
    end
  end

  describe "#score" do
    before { subject.game_version = Mutreborn::Application::DEFAULT_GAME_VERSION }

    its(:score) { is_expected.to eq(subject.scorer.score) }
  end

  describe "#chemistries_for_display" do
    let(:move_the_sticks) do
      Chemistry.create do |chem|
        chem.name = 'Move the Sticks'
        chem.display_position = 1
        chem.tier_1_boosts = { spin_move: 1, catch_in_traffic: 1, throw_accuracy_short: 1 }
        chem.tier_2_boosts = { juke_move: 1, route_running: 1, throw_accuracy_mid: 1 }
        chem.tier_3_boosts = { spin_move: 1, catch_in_traffic: 1, throw_accuracy_short: 1 }
        chem.tier_4_boosts = { juke_move: 1, route_running: 1, throw_accuracy_mid: 1 }
        chem.tier_5_boosts = {
          spin_move: 2,
          juke_move: 2,
          catch_in_traffic: 2,
          route_running: 2,
          throw_accuracy_short: 2,
          throw_accuracy_mid: 2
        }
      end
    end

    let(:go_deep) do
      Chemistry.create do |chem|
        chem.name = 'Go Deep'
        chem.display_position = 1
        chem.tier_1_boosts = { pass_block: 1, release: 1, throw_accuracy_deep: 1 }
        chem.tier_2_boosts = { throw_power: 1, spectacular_catch: 1, play_action: 1 }
        chem.tier_3_boosts = { pass_block: 1, release: 1, throw_accuracy_deep: 1 }
        chem.tier_4_boosts = { throw_power: 1, spectacular_catch: 1, play_action: 1 }
        chem.tier_5_boosts = {
          pass_block: 2,
          throw_power: 2,
          release: 2,
          spectacular_catch: 2,
          throw_accuracy_deep: 2,
          play_action: 2
        }
      end
    end

    let(:never_stumble) do
      Chemistry.create do |chem|
        chem.name             = 'Never Stumble'
        chem.description      = 'Player will auto-recover in stumble situations'
        chem.display_position = 2
      end
    end

    before do
      subject.save
      subject.player_card_chemistries.create(tier: 1, chemistry: move_the_sticks)
      subject.player_card_chemistries.create(tier: 1, chemistry: never_stumble)
      subject.player_card_chemistries.create(tier: 2, chemistry: go_deep)
    end

    it "sorts chemistries by tier first and then display position" do
      expect(subject.chemistries_for_display.collect(&:chemistry)).to eq([go_deep, move_the_sticks, never_stumble])
    end
  end
end
