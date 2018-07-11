class Chemistry < ApplicationRecord
  has_many :player_card_chemistries
  has_many :player_cards, through: :player_card_chemistries

  validates :name, presence: true

  scope :by_team_city, ->(city) { where(name: city) }
  scope :by_team_name, ->(name) { where(name: Team.city_and_team_name(team_city_or_team_name: name)) }

  def abbreviation
    team_abbreviation = Team.abbreviation(city_name: name)
    return team_abbreviation if team_abbreviation

    case name
    when 'Pound the Rock'          then 'PTR'
    when 'Move the Sticks'         then 'MTS'
    when 'Go Deep'                 then 'GD'
    when 'Physical Front'          then 'PF'
    when 'Read and React'          then 'RnR'
    when 'Blanket Coverage'        then 'BC'
    when 'Toughness'               then 'TGH'
    when 'Battle Ready'            then 'B'
    when 'Clutch Kicker'           then 'CK'
    when 'Conductor'               then 'C'
    when 'Energized'               then 'E'
    when 'Focused Kicker'          then 'FK'
    when 'Footsteps'               then 'F'
    when 'Gunslinger'              then 'G'
    when 'Hot Hands'               then 'H'
    when 'Identified'              then 'I'
    when 'Jump the Snap'           then 'J'
    when 'Lead the Way'            then 'L'
    when 'Never Stumble'           then 'N'
    when 'Out My Way'              then 'O'
    when 'Pick 6'                  then 'P6'
    when 'Pick Specialist'         then 'PS'
    when 'Playmaker'               then 'P'
    when 'Primetime Protector'     then 'PP'
    when 'Return Man'              then 'R'
    when 'Secure Pass Blocker'     then 'SP'
    when 'Secure Tackler'          then 'ST'
    when 'Situational Pass Rusher' then 'SR'
    when 'Tip Drill'               then 'T'
    when 'Under Pressure'          then 'UP'
    when 'Unfakeable'              then 'U'
    else
      nil
    end
  end

  def boosts(tier: )
    public_send("tier_#{ tier }_boosts") if (1..4).to_a.include? tier.to_i
  end
end
