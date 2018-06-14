class Chemistry < ApplicationRecord
  has_many :player_cards

  validates :name, presence: true

  scope :by_team_city, ->(city) { where(name: Team.city_and_team_name(team_city_or_team_name: city)) }
  scope :by_team_name, ->(name) { where(name: Team.city_and_team_name(team_city_or_team_name: name)) }
end
