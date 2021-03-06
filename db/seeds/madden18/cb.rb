[PHYSICAL_FRONT, READ_AND_REACT, BLANKET_COVERAGE, TOUGHNESS].each do |chemistry|
  night_train_lane = PlayerCard.create do |card|
    card.first_name              = 'Night Train'
    card.last_name               = 'Lane'
    card.overall                 = 99
    card.team_chemistry_id       = Chemistry.by_team_city(:detroit).first.id
    card.program                 = MASTER
    card.position                = Position::CORNERBACK
    card.salary_cap_value        = 84
    card.height_in_inches        = 73
    card.weight_in_pounds        = 194
    card.speed                   = 96
    card.strength                = 85
    card.agility                 = 96
    card.acceleration            = 98
    card.awareness               = 95
    card.catching                = 85
    card.jumping                 = 97
    card.stamina                 = 99
    card.injury                  = 97
    card.trucking                = 86
    card.elusiveness             = 88
    card.ball_carrier_vision     = 83
    card.stiff_arm               = 80
    card.spin_move               = 86
    card.juke_move               = 92
    card.carrying                = 83
    card.route_running           = 45
    card.catch_in_traffic        = 84
    card.spectacular_catch       = 80
    card.release                 = 60
    card.throw_power             = 46
    card.throw_accuracy_short    = 52
    card.throw_accuracy_mid      = 44
    card.throw_accuracy_deep     = 36
    card.throw_on_the_run        = 50
    card.play_action             = 31
    card.run_block               = 45
    card.pass_block              = 45
    card.impact_blocking         = 86
    card.tackle                  = 90
    card.hit_power               = 95
    card.power_moves             = 68
    card.finesse_moves           = 83
    card.block_shedding          = 86
    card.pursuit                 = 97
    card.play_recognition        = 95
    card.man_coverage            = 94
    card.zone_coverage           = 97
    card.press                   = 95
    card.kick_power              = 52
    card.kick_accuracy           = 54
    card.kick_return             = 68
    card.trait_clutch            = true
    card.trait_high_motor        = true
    card.trait_linebacker_style  = 'Balanced'
    card.trait_dl_swim_move      = false
    card.trait_dl_spin_move      = false
    card.trait_dl_bull_rush_move = false
    card.trait_big_hitter        = true
    card.trait_strips_ball       = true
    card.trait_plays_ball_in_air = 'Aggressive'
    card.trait_penalty           = 'Normal'
  end
  PlayerCardChemistry.create(player_card: night_train_lane, chemistry: chemistry, tier: 2)
  PlayerCardChemistry.create(player_card: night_train_lane, chemistry: TIP_DRILL, tier: 1)
  PlayerCardChemistry.create(player_card: night_train_lane, chemistry: SECURE_TACKLER, tier: 1)
end

[PHYSICAL_FRONT, READ_AND_REACT, BLANKET_COVERAGE, TOUGHNESS].each do |chemistry|
  mel_blount = PlayerCard.create do |card|
    card.first_name              = 'Mel'
    card.last_name               = 'Blount'
    card.overall                 = 97
    card.team_chemistry_id       = Chemistry.by_team_city(:pittsburgh).first.id
    card.program                 = ULTIMATE_LEGENDS
    card.position                = Position::CORNERBACK
    card.salary_cap_value        = 72
    card.height_in_inches        = 75
    card.weight_in_pounds        = 205
    card.speed                   = 94
    card.strength                = 78
    card.agility                 = 97
    card.acceleration            = 96
    card.awareness               = 94
    card.catching                = 80
    card.jumping                 = 96
    card.stamina                 = 96
    card.injury                  = 97
    card.trucking                = 58
    card.elusiveness             = 84
    card.ball_carrier_vision     = 84
    card.stiff_arm               = 58
    card.spin_move               = 80
    card.juke_move               = 82
    card.carrying                = 80
    card.route_running           = 50
    card.catch_in_traffic        = 78
    card.spectacular_catch       = 71
    card.release                 = 65
    card.throw_power             = 35
    card.throw_accuracy_short    = 30
    card.throw_accuracy_mid      = 30
    card.throw_accuracy_deep     = 25
    card.throw_on_the_run        = 25
    card.play_action             = 20
    card.run_block               = 45
    card.pass_block              = 45
    card.impact_blocking         = 80
    card.tackle                  = 85
    card.hit_power               = 84
    card.power_moves             = 80
    card.finesse_moves           = 72
    card.block_shedding          = 83
    card.pursuit                 = 94
    card.play_recognition        = 94
    card.man_coverage            = 95
    card.zone_coverage           = 94
    card.press                   = 95
    card.kick_power              = 35
    card.kick_accuracy           = 30
    card.kick_return             = 73
    card.trait_clutch            = true
    card.trait_high_motor        = true
    card.trait_dl_swim_move      = false
    card.trait_dl_spin_move      = false
    card.trait_dl_bull_rush_move = false
    card.trait_big_hitter        = true
    card.trait_strips_ball       = true
    card.trait_plays_ball_in_air = 'Aggressive'
    card.trait_penalty           = 'Disciplined'
  end
  PlayerCardChemistry.create(player_card: mel_blount, chemistry: chemistry, tier: 2)
  PlayerCardChemistry.create(player_card: mel_blount, chemistry: SECURE_TACKLER, tier: 1)
end

randy_moss = PlayerCard.create do |card|
  card.first_name              = 'Randy'
  card.last_name               = 'Moss'
  card.overall                 = 99
  card.team_chemistry_id       = Chemistry.by_team_city(:new_england).first.id
  card.program                 = GOLDEN_TICKETS
  card.position                = Position::CORNERBACK
  card.salary_cap_value        = 94
  card.height_in_inches        = 76
  card.weight_in_pounds        = 210
  card.speed                   = 98
  card.strength                = 64
  card.agility                 = 95
  card.acceleration            = 97
  card.awareness               = 95
  card.catching                = 94
  card.jumping                 = 99
  card.stamina                 = 95
  card.injury                  = 95
  card.trucking                = 60
  card.elusiveness             = 90
  card.ball_carrier_vision     = 93
  card.stiff_arm               = 80
  card.spin_move               = 91
  card.juke_move               = 91
  card.carrying                = 70
  card.route_running           = 93
  card.catch_in_traffic        = 89
  card.spectacular_catch       = 95
  card.release                 = 94
  card.throw_power             = 50
  card.throw_accuracy_short    = 20
  card.throw_accuracy_mid      = 15
  card.throw_accuracy_deep     = 10
  card.throw_on_the_run        = 15
  card.play_action             = 15
  card.run_block               = 48
  card.pass_block              = 38
  card.impact_blocking         = 68
  card.tackle                  = 75
  card.hit_power               = 96
  card.power_moves             = 58
  card.finesse_moves           = 72
  card.block_shedding          = 95
  card.pursuit                 = 98
  card.play_recognition        = 95
  card.man_coverage            = 94
  card.zone_coverage           = 98
  card.press                   = 96
  card.kick_power              = 20
  card.kick_accuracy           = 15
  card.kick_return             = 58
  card.trait_clutch            = true
  card.trait_high_motor        = false
  card.trait_dl_swim_move      = false
  card.trait_dl_spin_move      = false
  card.trait_dl_bull_rush_move = false
  card.trait_big_hitter        = false
  card.trait_strips_ball       = false
  card.trait_plays_ball_in_air = 'Balanced'
  card.trait_penalty           = 'Normal'
end

PlayerCardChemistry.create(player_card: randy_moss, chemistry: TOUGHNESS, tier: 3)
PlayerCardChemistry.create(player_card: randy_moss, chemistry: PHYSICAL_FRONT, tier: 1)
PlayerCardChemistry.create(player_card: randy_moss, chemistry: SECURE_TACKLER, tier: 1)
PlayerCardChemistry.create(player_card: randy_moss, chemistry: OUT_MY_WAY, tier: 1)
