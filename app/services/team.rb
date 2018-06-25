class Team
  TEAMS = {
    arizona:       'Cardinals',
    atlanta:       'Falcons',
    baltimore:     'Ravens',
    buffalo:       'Bills',
    carolina:      'Panthers',
    chicago:       'Bears',
    cincinnati:    'Bengals',
    cleveland:     'Browns',
    dallas:        'Cowboys',
    detroit:       'Lions',
    denver:        'Broncos',
    green_bay:     'Packers',
    houston:       'Texans',
    indianapolis:  'Colts',
    jacksonville:  'Jaguars',
    kansas_city:   'Chiefs',
    los_angeles:   'Rams',
    miami:         'Dolphins',
    new_england:   'Patriots',
    new_orleans:   'Saints',
    new_york_1:    'Giants',
    new_york_2:    'Jets',
    oakland:       'Raiders',
    philadelphia:  'Eagles',
    pittsburgh:    'Steelers',
    san_francisco: '49ers',
    seattle:       'Seahawks',
    tampa_bay:     'Buccaneers',
    tennessee:     'Titans',
    minnesota:     'Vikings',
    washington:    'Redskins'
  }

  ABBREVIATIONS = {
    arizona:       'ARZ',
    atlanta:       'ATL',
    baltimore:     'BAL',
    buffalo:       'BUF',
    carolina:      'CAR',
    chicago:       'CHI',
    cincinnati:    'CIN',
    cleveland:     'CLE',
    dallas:        'DAL',
    detroit:       'DET',
    denver:        'DEN',
    green_bay:     'GB',
    houston:       'HOU',
    indianapolis:  'IND',
    jacksonville:  'JAC',
    kansas_city:   'KC',
    los_angeles:   'LAR',
    miami:         'MIA',
    new_england:   'NE',
    new_orleans:   'NO',
    new_york_1:    'NYG',
    new_york_2:    'NYJ',
    oakland:       'OAK',
    philadelphia:  'PHI',
    pittsburgh:    'PIT',
    san_francisco: 'SF',
    seattle:       'SEA',
    tampa_bay:     'TB',
    tennessee:     'TEN',
    minnesota:     'MIN',
    washington:    'WSH'
  }

  def self.city_and_team_name(team_city_or_team_name: )
    if TEAMS.keys.include? team_city_or_team_name
      [team_city_or_team_name.to_s.titleize, TEAMS[team_city_or_team_name]].join(' ')
    elsif TEAMS.values.include? team_city_or_team_name
      [TEAMS.key(team_city_or_team_name).to_s.titleize, team_city_or_team_name.to_s.titleize].join(' ')
    end

  end

  def self.abbreviation(city_name: )
    ABBREVIATIONS.map { |name, abbreviation|
      abbreviation if name.to_s == city_name.to_s
    }.compact.first
  end
end
