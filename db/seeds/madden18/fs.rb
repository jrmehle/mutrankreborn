[PHYSICAL_FRONT, READ_AND_REACT, BLANKET_COVERAGE, TOUGHNESS].each do |chemistry|
  sean_taylor = PlayerCard.create do |card|
    card.first_name              = 'Sean'
    card.last_name               = 'Taylor'
    card.overall                 = 97
    card.team_chemistry_id       = Chemistry.by_team_city(:washington).first.id
    card.program                 = MASTER
    card.position                = Position::FREE_SAFETY
    card.salary_cap_value        = 74
    card.height_in_inches        = 74
    card.weight_in_pounds        = 220
    card.speed                   = 94
    card.strength                = 83
    card.agility                 = 95
    card.acceleration            = 96
    card.awareness               = 91
    card.catching                = 82
    card.jumping                 = 96
    card.stamina                 = 98
    card.injury                  = 95
    card.trucking                = 75
    card.elusiveness             = 70
    card.ball_carrier_vision     = 85
    card.stiff_arm               = 80
    card.spin_move               = 89
    card.juke_move               = 90
    card.carrying                = 78
    card.route_running           = 20
    card.catch_in_traffic        = 71
    card.spectacular_catch       = 65
    card.release                 = 45
    card.throw_power             = 32
    card.throw_accuracy_short    = 15
    card.throw_accuracy_mid      = 15
    card.throw_accuracy_deep     = 15
    card.throw_on_the_run        = 15
    card.play_action             = 15
    card.run_block               = 45
    card.pass_block              = 45
    card.impact_blocking         = 87
    card.tackle                  = 92
    card.hit_power               = 96
    card.power_moves             = 77
    card.finesse_moves           = 88
    card.block_shedding          = 90
    card.pursuit                 = 96
    card.play_recognition        = 91
    card.man_coverage            = 80
    card.zone_coverage           = 95
    card.press                   = 82
    card.kick_power              = 18
    card.kick_accuracy           = 12
    card.kick_return             = 60
    card.trait_clutch            = true
    card.trait_high_motor        = true
    card.trait_dl_swim_move      = false
    card.trait_dl_spin_move      = false
    card.trait_dl_bull_rush_move = false
    card.trait_big_hitter        = true
    card.trait_strips_ball       = true
    card.trait_plays_ball_in_air = 'Aggressive'
    card.trait_linebacker_style  = 'Balanced'
    card.trait_penalty           = 'Normal'
  end
  PlayerCardChemistry.create(player_card: sean_taylor, chemistry: chemistry, tier: 2)
  PlayerCardChemistry.create(player_card: sean_taylor, chemistry: SECURE_TACKLER, tier: 1)
  PlayerCardChemistry.create(player_card: sean_taylor, chemistry: TIP_DRILL, tier: 1)
end

[PHYSICAL_FRONT, READ_AND_REACT, BLANKET_COVERAGE, TOUGHNESS].each do |chemistry|
  brian_dawkins = PlayerCard.create do |card|
    card.first_name              = 'Brian'
    card.last_name               = 'Dawkins'
    card.overall                 = 98
    card.team_chemistry_id       = Chemistry.by_team_city(:philadelphia).first.id
    card.program                 = ULTIMATE_LEGENDS
    card.position                = Position::FREE_SAFETY
    card.salary_cap_value        = 75
    card.height_in_inches        = 72
    card.weight_in_pounds        = 210
    card.speed                   = 97
    card.strength                = 77
    card.agility                 = 96
    card.acceleration            = 97
    card.awareness               = 95
    card.catching                = 81
    card.jumping                 = 96
    card.stamina                 = 98
    card.injury                  = 96
    card.trucking                = 68
    card.elusiveness             = 78
    card.ball_carrier_vision     = 72
    card.stiff_arm               = 66
    card.spin_move               = 83
    card.juke_move               = 87
    card.carrying                = 67
    card.route_running           = 15
    card.catch_in_traffic        = 70
    card.spectacular_catch       = 66
    card.release                 = 25
    card.throw_power             = 20
    card.throw_accuracy_short    = 20
    card.throw_accuracy_mid      = 20
    card.throw_accuracy_deep     = 15
    card.throw_on_the_run        = 15
    card.play_action             = 15
    card.run_block               = 45
    card.pass_block              = 45
    card.impact_blocking         = 78
    card.tackle                  = 88
    card.hit_power               = 97
    card.power_moves             = 69
    card.finesse_moves           = 87
    card.block_shedding          = 88
    card.pursuit                 = 97
    card.play_recognition        = 95
    card.man_coverage            = 81
    card.zone_coverage           = 96
    card.press                   = 88
    card.kick_power              = 20
    card.kick_accuracy           = 20
    card.kick_return             = 46
    card.trait_clutch            = true
    card.trait_high_motor        = true
    card.trait_dl_swim_move      = false
    card.trait_dl_spin_move      = false
    card.trait_dl_bull_rush_move = false
    card.trait_big_hitter        = true
    card.trait_strips_ball       = true
    card.trait_plays_ball_in_air = 'Aggressive'
    card.trait_linebacker_style  = 'Balanced'
    card.trait_penalty           = 'Normal'
  end

  PlayerCardChemistry.create(player_card: brian_dawkins, chemistry: chemistry, tier: 2)
  PlayerCardChemistry.create(player_card: brian_dawkins, chemistry: TIP_DRILL, tier: 1)
end
