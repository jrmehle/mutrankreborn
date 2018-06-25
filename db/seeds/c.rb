alex_mack = PlayerCard.create do |card|
  card.first_name           = 'Alex'
  card.last_name            = 'Mack'
  card.team_chemistry_id    = Chemistry.by_team_city(:atlanta).first.id
  card.overall              = 98
  card.position             = Position::CENTER
  card.salary_cap_value     = 69
  card.height_in_inches     = 76
  card.weight_in_pounds     = 311
  card.speed                = 69
  card.strength             = 95
  card.agility              = 66
  card.acceleration         = 83
  card.awareness            = 98
  card.catching             = 50
  card.jumping              = 25
  card.stamina              = 91
  card.injury               = 97
  card.trucking             = 58
  card.elusiveness          = 32
  card.ball_carrier_vision  = 62
  card.stiff_arm            = 60
  card.spin_move            = 39
  card.juke_move            = 39
  card.carrying             = 68
  card.route_running        = 32
  card.catch_in_traffic     = 32
  card.spectacular_catch    = 32
  card.release              = 36
  card.throw_power          = 34
  card.throw_accuracy_short = 27
  card.throw_accuracy_mid   = 28
  card.throw_accuracy_deep  = 27
  card.throw_on_the_run     = 30
  card.play_action          = 28
  card.run_block            = 98
  card.pass_block           = 94
  card.impact_blocking      = 97
  card.tackle               = 47
  card.hit_power            = 36
  card.power_moves          = 28
  card.finesse_moves        = 28
  card.block_shedding       = 40
  card.pursuit              = 45
  card.play_recognition     = 37
  card.man_coverage         = 26
  card.zone_coverage        = 30
  card.press                = 28
  card.kick_power           = 36
  card.kick_accuracy        = 33
  card.kick_return          = 28
  card.trait_high_motor     = true
  card.trait_penalty        = 'Normal'
end
PlayerCardChemistry.create(player_card: alex_mack, chemistry: MOVE_THE_STICKS, tier: 2)
PlayerCardChemistry.create(player_card: alex_mack, chemistry: GO_DEEP, tier: 1)
PlayerCardChemistry.create(player_card: alex_mack, chemistry: SECURE_PASS_BLOCKER, tier: 1)

rodney_hudson = PlayerCard.create do |card|
  card.first_name            = 'Rodney'
  card.last_name             = 'Hudson'
  card.team_chemistry_id     = Chemistry.by_team_city(:oakland).first.id
  card.overall               = 94
  card.position              = Position::CENTER
  card.salary_cap_value      = 50
  card.height_in_inches      = 74
  card.weight_in_pounds      = 300
  card.speed                 = 64
  card.strength              = 85
  card.agility               = 70
  card.acceleration          = 83
  card.awareness             = 95
  card.catching              = 53
  card.jumping               = 54
  card.stamina               = 88
  card.injury                = 93
  card.trucking              = 39
  card.elusiveness           = 48
  card.ball_carrier_vision   = 32
  card.stiff_arm             = 32
  card.spin_move             = 32
  card.juke_move             = 32
  card.carrying              = 57
  card.route_running         = 36
  card.catch_in_traffic      = 36
  card.spectacular_catch     = 36
  card.release               = 38
  card.throw_power           = 33
  card.throw_accuracy_short  = 32
  card.throw_accuracy_mid    = 32
  card.throw_accuracy_deep   = 32
  card.throw_on_the_run      = 34
  card.play_action           = 32
  card.run_block             = 95
  card.pass_block            = 92
  card.impact_blocking       = 95
  card.tackle                = 56
  card.hit_power             = 39
  card.power_moves           = 46
  card.finesse_moves         = 46
  card.block_shedding        = 54
  card.pursuit               = 48
  card.play_recognition      = 36
  card.man_coverage          = 33
  card.zone_coverage         = 35
  card.press                 = 32
  card.kick_power            = 32
  card.kick_accuracy         = 36
  card.kick_return           = 32
  card.trait_high_motor      = true
  card.trait_penalty         = 'Undisciplined'
end
PlayerCardChemistry.create(player_card: rodney_hudson, chemistry: POUND_THE_ROCK, tier: 2)
