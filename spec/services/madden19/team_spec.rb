require 'rails_helper'

RSpec.describe Madden19::Team do
  describe ".city_and_team_name" do
    it 'returns the city and team name when given the city name' do
      expect(described_class.city_and_team_name(team_city_or_team_name: :arizona))
        .to eq('Arizona Cardinals')
    end

    it 'returns the city and team name when given the team name' do
      expect(described_class.city_and_team_name(team_city_or_team_name: 'Saints'))
        .to eq('New Orleans Saints')
    end

    it 'returns nil when given an unrecognized name' do
      expect(described_class.city_and_team_name(team_city_or_team_name: 'St. Louis'))
        .to be_nil
    end
  end
end
