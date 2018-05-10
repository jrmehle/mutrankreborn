require 'rails_helper'

RSpec.describe Position do
  describe ".names" do
    it "returns an array of position names" do
      expect(described_class.names.size).to eq(19)
      expect(described_class.names).to eq([
        'Quarterback',
        'Halfback',
        'Wide Receiver',
        'Fullback',
        'Tight End',
        'Right Tackle',
        'Right Guard',
        'Center',
        'Left Guard',
        'Left Tackle',
        'Free Safety',
        'Strong Safety',
        'Cornerback',
        'Right Outside Linebacker',
        'Middle Linebacker',
        'Left Outside Linebacker',
        'Left End',
        'Right End',
        'Defensive Tackle'])
    end
  end

  describe ".abbreviations" do
    it "returns an array of position abbreviations" do
      expect(described_class.abbreviations.size).to eq(19)
      expect(described_class.abbreviations).to eq([
        'qb',
        'hb',
        'wr',
        'fb',
        'te',
        'rt',
        'rg',
        'c',
        'lg',
        'lt',
        'fs',
        'ss',
        'cb',
        'rolb',
        'mlb',
        'lolb',
        'le',
        're',
        'dt'])
    end
  end

  describe ".styles" do
    it "returns the styles for a given position name" do
      expect(described_class
        .styles(position_name_or_abbreviation: 'Quarterback'))
          .to eq(['dual_threat', 'pocket_passer', 'mobile'])
    end

    it "returns the styles for a given position abbreviation" do
      expect(described_class.styles(position_name_or_abbreviation: 'qb'))
        .to eq(['dual_threat', 'pocket_passer', 'mobile'])
    end
  end

  describe ".name_from_abbreviation" do
    it "returns the position abbreviation when given a name" do
      expect(described_class.name_from_abbreviation(abbreviation: 'qb'))
        .to eq('Quarterback')
    end
  end

  describe ".abbreviation_from_name" do
    it "returns the position abbreviation when given a name" do
      expect(described_class.abbreviation_from_name(position_name: 'Quarterback'))
        .to eq('qb')
    end
  end
end
