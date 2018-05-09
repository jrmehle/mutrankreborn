require 'rails_helper'

RSpec.describe PlayerCard, type: :model do
  subject do
    described_class.new(
      first_name: 'John',
      last_name: 'Madden',
      position: 'qb',
      overall: 99)
  end

  # Validations
  it 'should validate that :game_version cannot be empty/falsy' do
    allow(subject).to receive(:set_default_game_version)
    expect(subject).to_not be_valid
  end
  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
  it { is_expected.to validate_presence_of :position }
  it { is_expected.to validate_inclusion_of(:position)
    .in_array(described_class::POSITIONS.keys) }
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
end
