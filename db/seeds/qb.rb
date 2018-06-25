tom_brady = PlayerCard.create do |card|
  card.first_name                = 'Tom'
  card.last_name                 = 'Brady'
  card.overall                   = 98
  card.team_chemistry_id         = Chemistry.by_team_city(:new_england).first.id
  card.position                  = Position::QUARTERBACK
  card.height_in_inches          = 76
  card.weight_in_pounds          = 225
  card.speed                     = 70
  card.strength                  = 71
  card.agility                   = 74
  card.acceleration              = 75
  card.awareness                 = 98
  card.catching                  = 56
  card.jumping                   = 51
  card.stamina                   = 96
  card.injury                    = 96
  card.trucking                  = 57
  card.elusiveness               = 72
  card.ball_carrier_vision       = 72
  card.stiff_arm                 = 60
  card.spin_move                 = 65
  card.juke_move                 = 73
  card.carrying                  = 72
  card.route_running             = 43
  card.catch_in_traffic          = 43
  card.spectacular_catch         = 52
  card.release                   = 44
  card.throw_power               = 95
  card.throw_accuracy_short      = 98
  card.throw_accuracy_mid        = 96
  card.throw_accuracy_deep       = 93
  card.throw_on_the_run          = 87
  card.play_action               = 98
  card.run_block                 = 54
  card.pass_block                = 45
  card.impact_blocking           = 55
  card.tackle                    = 58
  card.hit_power                 = 41
  card.power_moves               = 40
  card.finesse_moves             = 40
  card.block_shedding            = 53
  card.pursuit                   = 52
  card.play_recognition          = 46
  card.man_coverage              = 41
  card.zone_coverage             = 45
  card.press                     = 40
  card.kick_power                = 45
  card.kick_accuracy             = 44
  card.kick_return               = 45
  card.trait_quarterback_style   = 'Pocket'
  card.trait_throws_tight_spiral = true
  card.trait_senses_pressure     = 'Ideal'
  card.trait_throws_ball_away    = true
  card.trait_forces_passes       = 'Ideal'
  card.trait_clutch              = true
  card.trait_penalty             = 'Disciplined'
end
PlayerCardChemistry.create(player_card: tom_brady, chemistry: MOVE_THE_STICKS, tier: 2)
PlayerCardChemistry.create(player_card: tom_brady, chemistry: CONDUCTOR, tier: 1)

[POUND_THE_ROCK, MOVE_THE_STICKS, GO_DEEP, TOUGHNESS].each do |chemistry|
  mike_vick = PlayerCard.create do |card|
    card.first_name                = 'Mike'
    card.last_name                 = 'Vick'
    card.overall                   = 97
    card.team_chemistry_id         = Chemistry.by_team_city(:atlanta).first.id
    card.position                  = Position::QUARTERBACK
    card.height_in_inches          = 72
    card.weight_in_pounds          = 215
    card.speed                     = 94
    card.strength                  = 62
    card.agility                   = 95
    card.acceleration              = 95
    card.awareness                 = 88
    card.catching                  = 74
    card.jumping                   = 95
    card.stamina                   = 98
    card.injury                    = 90
    card.trucking                  = 52
    card.elusiveness               = 95
    card.ball_carrier_vision       = 90
    card.stiff_arm                 = 68
    card.spin_move                 = 93
    card.juke_move                 = 95
    card.carrying                  = 80
    card.route_running             = 35
    card.catch_in_traffic          = 25
    card.spectacular_catch         = 45
    card.release                   = 45
    card.throw_power               = 95
    card.throw_accuracy_short      = 86
    card.throw_accuracy_mid        = 88
    card.throw_accuracy_deep       = 91
    card.throw_on_the_run          = 97
    card.play_action               = 83
    card.run_block                 = 26
    card.pass_block                = 20
    card.impact_blocking           = 25
    card.tackle                    = 38
    card.hit_power                 = 12
    card.power_moves               = 10
    card.finesse_moves             = 10
    card.block_shedding            = 31
    card.pursuit                   = 40
    card.play_recognition          = 25
    card.man_coverage              = 18
    card.zone_coverage             = 16
    card.press                     = 10
    card.kick_power                = 25
    card.kick_accuracy             = 25
    card.kick_return               = 50
    card.trait_quarterback_style   = 'Scrambling'
    card.trait_throws_tight_spiral = true
    card.trait_senses_pressure     = 'Trigger Happy'
    card.trait_throws_ball_away    = false
    card.trait_forces_passes       = 'Aggressive'
    card.trait_clutch              = false
    card.trait_penalty             = 'Undisciplined'
  end
  PlayerCardChemistry.create(player_card: mike_vick, chemistry: chemistry, tier: 2)
  PlayerCardChemistry.create(player_card: mike_vick, chemistry: GUNSLINGER, tier: 1)
end
