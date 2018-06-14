class Team
  TEAMS = {
    arizona: 'Cardinals',
    atlanta: 'Falcons',
    baltimore: 'Ravens',
    buffalo: 'Bills',
    carolina: 'Panthers',
    chicago: 'Bears',
    cincinnati: 'Bengals',
    cleveland: 'Browns',
    dallas: 'Cowboys',
    detroit: 'Lions',
    denver: 'Broncos',
    green_bay: 'Packers',
    houston: 'Texans',
    indianapolis: 'Colts',
    jacksonville: 'Jaguars',
    kansas_city: 'Chiefs',
    los_angeles: 'Rams',
    miami: 'Dolphins',
    new_england: 'Patriots',
    new_orleans: 'Saints',
    new_york_1: 'Giants',
    new_york_2: 'Jets',
    oakland: 'Raiders',
    philadelphia: 'Eagles',
    pittsburgh: 'Steelers',
    san_francisco: '49ers',
    seattle: 'Seahawks',
    tampa_bay: 'Buccaneers',
    tennessee: 'Titans',
    minnesota: 'Vikings',
    washington: 'Redskins'
  }

  def self.city_and_team_name(team_city_or_team_name: )
    if TEAMS.keys.include? team_city_or_team_name
      [team_city_or_team_name.to_s.titleize, TEAMS[team_city_or_team_name]].join(' ')
    elsif TEAMS.values.include? team_city_or_team_name
      [TEAMS.key(team_city_or_team_name), team_city_or_team_name.to_s.titleize].join(' ')
    end

  end
end
