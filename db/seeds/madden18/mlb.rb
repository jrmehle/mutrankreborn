[PHYSICAL_FRONT, READ_AND_REACT, BLANKET_COVERAGE, TOUGHNESS].each do |chemistry|
  ray_lewis = PlayerCard.create do |card|
    card.first_name              = 'Ray'
    card.last_name               = 'Lewis'
    card.overall                 = 99
    card.team_chemistry_id       = Chemistry.by_team_city(:baltimore).first.id
    card.program                 = ULTIMATE_LEGENDS
    card.position                = Position::MIDDLE_LINEBACKER
    card.salary_cap_value        = 67
    card.height_in_inches        = 73
    card.weight_in_pounds        = 250
    card.speed                   = 92
    card.strength                = 95
    card.agility                 = 89
    card.acceleration            = 95
    card.awareness               = 98
    card.catching                = 70
    card.jumping                 = 83
    card.stamina                 = 98
    card.injury                  = 98
    card.trucking                = 58
    card.elusiveness             = 46
    card.ball_carrier_vision     = 65
    card.stiff_arm               = 84
    card.spin_move               = 50
    card.juke_move               = 60
    card.carrying                = 68
    card.route_running           = 15
    card.catch_in_traffic        = 69
    card.spectacular_catch       = 64
    card.release                 = 25
    card.throw_power             = 14
    card.throw_accuracy_short    = 5
    card.throw_accuracy_mid      = 5
    card.throw_accuracy_deep     = 5
    card.throw_on_the_run        = 5
    card.play_action             = 5
    card.run_block               = 45
    card.pass_block              = 45
    card.impact_blocking         = 96
    card.tackle                  = 99
    card.hit_power               = 98
    card.power_moves             = 96
    card.finesse_moves           = 84
    card.block_shedding          = 98
    card.pursuit                 = 99
    card.play_recognition        = 98
    card.man_coverage            = 79
    card.zone_coverage           = 88
    card.press                   = 75
    card.kick_power              = 17
    card.kick_accuracy           = 23
    card.kick_return             = 10
    card.trait_clutch            = true
    card.trait_high_motor        = true
    card.trait_linebacker_style  = 'Balanced'
    card.trait_dl_swim_move      = false
    card.trait_dl_spin_move      = false
    card.trait_dl_bull_rush_move = false
    card.trait_big_hitter        = true
    card.trait_strips_ball       = false
    card.trait_plays_ball_in_air = 'Balanced'
    card.trait_penalty           = 'Normal'
  end

  if chemistry == PHYSICAL_FRONT
    PlayerCardChemistry.create(player_card: ray_lewis, chemistry: chemistry, tier: 3)
  else
    PlayerCardChemistry.create(player_card: ray_lewis, chemistry: chemistry, tier: 2)
    PlayerCardChemistry.create(player_card: ray_lewis, chemistry: PHYSICAL_FRONT, tier: 1)
  end

  PlayerCardChemistry.create(player_card: ray_lewis, chemistry: SECURE_TACKLER, tier: 1)
end

donta_hightower = PlayerCard.create do |card|
  card.first_name              = 'Dont\'a'
  card.last_name               = 'Hightower'
  card.overall                 = 96
  card.team_chemistry_id       = Chemistry.by_team_city(:new_england).first.id
  card.program                 = BOSS_BATTLES
  card.position                = Position::MIDDLE_LINEBACKER
  card.salary_cap_value        = 50
  card.height_in_inches        = 75
  card.weight_in_pounds        = 265
  card.speed                   = 86
  card.strength                = 86
  card.agility                 = 79
  card.acceleration            = 90
  card.awareness               = 96
  card.catching                = 75
  card.jumping                 = 83
  card.stamina                 = 93
  card.injury                  = 89
  card.trucking                = 72
  card.elusiveness             = 51
  card.ball_carrier_vision     = 55
  card.stiff_arm               = 61
  card.spin_move               = 46
  card.juke_move               = 50
  card.carrying                = 72
  card.route_running           = 43
  card.catch_in_traffic        = 55
  card.spectacular_catch       = 55
  card.release                 = 51
  card.throw_power             = 43
  card.throw_accuracy_short    = 40
  card.throw_accuracy_mid      = 41
  card.throw_accuracy_deep     = 40
  card.throw_on_the_run        = 42
  card.play_action             = 41
  card.run_block               = 60
  card.pass_block              = 60
  card.impact_blocking         = 93
  card.tackle                  = 96
  card.hit_power               = 95
  card.power_moves             = 92
  card.finesse_moves           = 81
  card.block_shedding          = 91
  card.pursuit                 = 95
  card.play_recognition        = 96
  card.man_coverage            = 83
  card.zone_coverage           = 90
  card.press                   = 80
  card.kick_power              = 41
  card.kick_accuracy           = 41
  card.kick_return             = 41
  card.trait_clutch            = false
  card.trait_high_motor        = true
  card.trait_linebacker_style  = 'Balanced'
  card.trait_dl_swim_move      = false
  card.trait_dl_spin_move      = false
  card.trait_dl_bull_rush_move = true
  card.trait_big_hitter        = true
  card.trait_strips_ball       = true
  card.trait_plays_ball_in_air = 'Balanced'
  card.trait_penalty           = 'Disciplined'
end
PlayerCardChemistry.create(player_card: donta_hightower, chemistry: TOUGHNESS, tier: 2)
