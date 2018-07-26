require 'rails_helper'

RSpec.describe Madden19::PlayerStat do
  describe ".stat_abbreviation" do
    it 'takes a stat name as a string and returns its abbreviation' do
      expect(described_class.stat_abbreviation(stat_name: 'speed')).to eq('SPD')
    end

    it 'takes a stat name as a symbol and returns its abbreviation' do
      expect(described_class.stat_abbreviation(stat_name: :speed)).to eq('SPD')
    end

    it 'returns nil when given an unrecognized stat name' do
      expect(described_class.stat_abbreviation(stat_name: :sitting)).to be_nil
    end
  end

  describe ".stat_name" do
    it 'takes a stat abbreviation as a string and returns its name' do
      expect(described_class.stat_name(stat_abbreviation: 'SPD')).to eq('Speed')
    end

    it 'takes a stat abbreviation as a symbol and returns its name' do
      expect(described_class.stat_name(stat_abbreviation: :SPD)).to eq('Speed')
    end

    it 'returns an empty string when given an unrecognized stat abbreviation' do
      expect(described_class.stat_name(stat_abbreviation: :xxx)).to eq('')
    end
  end
end
