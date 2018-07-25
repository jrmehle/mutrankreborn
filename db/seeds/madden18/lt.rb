[POUND_THE_ROCK, MOVE_THE_STICKS, GO_DEEP, TOUGHNESS].each do |chemistry|
  anthony_munoz = PlayerCard.create do |card|
    card.first_name            = 'Anthony'
    card.last_name             = 'Munoz'
    card.overall               = 97
    card.team_chemistry_id     = Chemistry.by_team_city(:cincinnati).first.id
    card.program               = ULTIMATE_LEGENDS
    card.position              = Position::LEFT_TACKLE
    card.salary_cap_value      = 64
    card.height_in_inches      = 78
    card.weight_in_pounds      = 280
    card.speed                 = 77
    card.strength              = 97
    card.agility               = 71
    card.acceleration          = 83
    card.awareness             = 94
    card.catching              = 65
    card.jumping               = 83
    card.stamina               = 96
    card.injury                = 96
    card.trucking              = 20
    card.elusiveness           = 15
    card.ball_carrier_vision   = 15
    card.stiff_arm             = 30
    card.spin_move             = 10
    card.juke_move             = 14
    card.carrying              = 64
    card.route_running         = 58
    card.catch_in_traffic      = 62
    card.spectacular_catch     = 45
    card.release               = 43
    card.throw_power           = 30
    card.throw_accuracy_short  = 6
    card.throw_accuracy_mid    = 6
    card.throw_accuracy_deep   = 6
    card.throw_on_the_run      = 6
    card.play_action           = 6
    card.run_block             = 94
    card.pass_block            = 97
    card.impact_blocking       = 92
    card.tackle                = 44
    card.hit_power             = 20
    card.power_moves           = 10
    card.finesse_moves         = 10
    card.block_shedding        = 20
    card.pursuit               = 29
    card.play_recognition      = 15
    card.man_coverage          = 12
    card.zone_coverage         = 15
    card.press                 = 10
    card.kick_power            = 21
    card.kick_accuracy         = 20
    card.kick_return           = 10
    card.trait_high_motor      = true
    card.trait_penalty         = 'Normal'
  end
  PlayerCardChemistry.create(player_card: anthony_munoz, chemistry: chemistry, tier: 2)
  PlayerCardChemistry.create(player_card: anthony_munoz, chemistry: SECURE_PASS_BLOCKER, tier: 1)
end

joe_thomas = PlayerCard.create do |card|
  card.first_name            = 'Joe'
  card.last_name             = 'Thomas'
  card.overall               = 99
  card.team_chemistry_id     = Chemistry.by_team_city(:cleveland).first.id
  card.program               = ULTIMATE_LEGENDS
  card.position              = Position::LEFT_TACKLE
  card.salary_cap_value      = 71
  card.height_in_inches      = 78
  card.weight_in_pounds      = 312
  card.speed                 = 75
  card.strength              = 96
  card.agility               = 78
  card.acceleration          = 83
  card.awareness             = 98
  card.catching              = 61
  card.jumping               = 76
  card.stamina               = 98
  card.injury                = 98
  card.trucking              = 38
  card.elusiveness           = 47
  card.ball_carrier_vision   = 38
  card.stiff_arm             = 38
  card.spin_move             = 38
  card.juke_move             = 38
  card.carrying              = 65
  card.route_running         = 47
  card.catch_in_traffic      = 49
  card.spectacular_catch     = 47
  card.release               = 56
  card.throw_power           = 40
  card.throw_accuracy_short  = 37
  card.throw_accuracy_mid    = 38
  card.throw_accuracy_deep   = 37
  card.throw_on_the_run      = 39
  card.play_action           = 38
  card.run_block             = 95
  card.pass_block            = 99
  card.impact_blocking       = 96
  card.tackle                = 63
  card.hit_power             = 53
  card.power_moves           = 56
  card.finesse_moves         = 49
  card.block_shedding        = 53
  card.pursuit               = 65
  card.play_recognition      = 49
  card.man_coverage          = 38
  card.zone_coverage         = 38
  card.press                 = 38
  card.kick_power            = 44
  card.kick_accuracy         = 46
  card.kick_return           = 38
  card.trait_high_motor      = true
  card.trait_penalty         = 'Disciplined'
end
PlayerCardChemistry.create(player_card: joe_thomas, chemistry: TOUGHNESS, tier: 2)
PlayerCardChemistry.create(player_card: joe_thomas, chemistry: SECURE_PASS_BLOCKER, tier: 1)