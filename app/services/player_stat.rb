# TODO: move to madden18 directory (new stats in Madden 19)
class PlayerStat
  STATS = {
    overall:              'OVR',
    height:               'HGT',
    weight:               'WGT',
    speed:                'SPD',
    strength:             'STR',
    agility:              'AGI',
    acceleration:         'ACC',
    awareness:            'AWR',
    catching:             'CTH',
    jumping:              'JMP',
    stamina:              'STA',
    injury:               'INJ',
    trucking:             'TRK',
    elusiveness:          'ELU',
    ball_carrier_vision:  'BCV',
    stiff_arm:            'SFA',
    spin_move:            'SPM',
    juke_move:            'JKM',
    carrying:             'CAR',
    route_running:        'RTE',
    catch_in_traffic:     'CIT',
    spectacular_catch:    'SPC',
    release:              'RLS',
    throw_power:          'THP',
    throw_accuracy_short: 'TAS',
    throw_accuracy_mid:   'TAM',
    throw_accuracy_deep:  'TAD',
    throw_on_the_run:     'TOR',
    play_action:          'PAC',
    run_block:            'RBK',
    pass_block:           'PBK',
    impact_blocking:      'IMP',
    tackle:               'TAK',
    hit_power:            'POW',
    power_moves:          'PWM',
    finesse_moves:        'FNM',
    block_shedding:       'BKS',
    pursuit:              'PUR',
    play_recognition:     'PRC',
    man_coverage:         'MCV',
    zone_coverage:        'ZCV',
    press:                'PRS',
    kick_power:           'KPW',
    kick_accuracy:        'KAC',
    kick_return:          'KR'
  }

  def self.stat_abbreviation(stat_name: )
    return nil unless STATS.keys.map(&:to_s).include? stat_name.to_s
    STATS[stat_name.to_sym]
  end

  def self.stat_name(stat_abbreviation: )
    STATS.key(stat_abbreviation.to_s.upcase).to_s.titleize
  end
end
