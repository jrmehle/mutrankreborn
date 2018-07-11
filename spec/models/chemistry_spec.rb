require 'rails_helper'

RSpec.describe Chemistry, type: :model do
  # Associations
  it { is_expected.to have_many :player_card_chemistries }
  it { is_expected.to have_many(:player_cards).through(:player_card_chemistries) }

  # Validations
  it { is_expected.to validate_presence_of :name }

  let(:pound_the_rock_chemistry) do
    Chemistry.create do |chem|
      chem.name = 'Pound the Rock'
      chem.display_position = 1
      chem.tier_1_boosts = { run_block: 1, stiff_arm: 1, throw_on_the_run: 1 }
      chem.tier_2_boosts = { trucking: 1, elusiveness: 1, ball_carrier_vision: 1 }
      chem.tier_3_boosts = { run_block: 1, stiff_arm: 1, throw_on_the_run: 1 }
      chem.tier_4_boosts = { trucking: 1, elusiveness: 1, ball_carrier_vision: 1 }
      chem.tier_5_boosts = {
        run_block: 2,
        trucking: 2,
        stiff_arm: 2,
        elusiveness: 2,
        throw_on_the_run: 2,
        ball_carrier_vision: 2
      }
    end
  end

  describe "#abbreviation" do
    it 'uses team abbreviation when the chemistry name is a city name' do
      expect(Chemistry.new(name: :minnesota).abbreviation).to eq('MIN')
    end

    it 'returns proper abbreviation for a regular chemistry' do
      {
        'Pound the Rock' => 'PTR',
        'Move the Sticks' => 'MTS',
        'Go Deep' => 'GD',
        'Physical Front' => 'PF',
        'Read and React' => 'RnR',
        'Blanket Coverage' => 'BC',
        'Toughness' => 'TGH',
      }.each do |name, abbrev|
        expect(Chemistry.new(name: name).abbreviation).to eq(abbrev)
      end
    end

    it 'returns proper abbreviation for a red chemistry' do
      {
        'Battle Ready' => 'B',
        'Clutch Kicker' => 'CK',
        'Conductor' => 'C',
        'Energized' => 'E',
        'Focused Kicker' => 'FK',
        'Footsteps' => 'F',
        'Gunslinger' => 'G',
        'Hot Hands' => 'H',
        'Identified' => 'I',
        'Jump the Snap' => 'J',
        'Lead the Way' => 'L',
        'Never Stumble' => 'N',
        'Out My Way' => 'O',
        'Pick 6' => 'P6',
        'Pick Specialist' => 'PS',
        'Playmaker' => 'P',
        'Primetime Protector' => 'PP',
        'Return Man' => 'R',
        'Secure Pass Blocker' => 'SP',
        'Secure Tackler' => 'ST',
        'Situational Pass Rusher' => 'SR',
        'Tip Drill' => 'T',
        'Under Pressure' => 'UP',
        'Unfakeable' => 'U'
      }.each do |name, abbrev|
        expect(Chemistry.new(name: name).abbreviation).to eq(abbrev)
      end
    end

    it 'returns nil for unrecognized chemistry names' do
      expect(Chemistry.new(name: 'Ruckus Causer').abbreviation).to be_nil
    end
  end

  describe "#boosts" do
    it 'returns the tier boosts when tier is 1-4' do
      expect(pound_the_rock_chemistry.boosts(tier: 1))
        .to eq({'run_block' => 1, 'stiff_arm' => 1, 'throw_on_the_run' => 1 })

      expect(pound_the_rock_chemistry.boosts(tier: 2))
        .to eq({ 'trucking' => 1, 'elusiveness' => 1, 'ball_carrier_vision' => 1 })

      expect(pound_the_rock_chemistry.boosts(tier: 3))
        .to eq({'run_block' => 1, 'stiff_arm' => 1, 'throw_on_the_run' => 1 })

      expect(pound_the_rock_chemistry.boosts(tier: 4))
        .to eq({ 'trucking' => 1, 'elusiveness' => 1, 'ball_carrier_vision' => 1 })
    end
  end
end
