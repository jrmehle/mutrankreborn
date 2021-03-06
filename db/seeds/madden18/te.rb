evan_engram = PlayerCard.create do |card|
  card.first_name                      = 'Evan'
  card.last_name                       = 'Engram'
  card.position                        = Position::TIGHT_END
  card.team_chemistry_id               = Chemistry.by_team_city(:new_york_1).first.id
  card.program                         = NFL_COMBINE
  card.overall                         = 96
  card.salary_cap_value                = 56
  card.height_in_inches                = 75
  card.weight_in_pounds                = 233
  card.speed                           = 93
  card.strength                        = 75
  card.agility                         = 91
  card.acceleration                    = 95
  card.awareness                       = 91
  card.catching                        = 95
  card.jumping                         = 90
  card.stamina                         = 88
  card.injury                          = 88
  card.trucking                        = 83
  card.elusiveness                     = 88
  card.ball_carrier_vision             = 81
  card.stiff_arm                       = 80
  card.spin_move                       = 76
  card.juke_move                       = 83
  card.carrying                        = 82
  card.route_running                   = 95
  card.catch_in_traffic                = 92
  card.spectacular_catch               = 95
  card.release                         = 90
  card.throw_power                     = 38
  card.throw_accuracy_short            = 37
  card.throw_accuracy_mid              = 35
  card.throw_accuracy_deep             = 32
  card.throw_on_the_run                = 42
  card.play_action                     = 35
  card.run_block                       = 82
  card.pass_block                      = 76
  card.impact_blocking                 = 78
  card.tackle                          = 52
  card.hit_power                       = 38
  card.power_moves                     = 34
  card.finesse_moves                   = 38
  card.block_shedding                  = 41
  card.pursuit                         = 42
  card.play_recognition                = 37
  card.man_coverage                    = 35
  card.zone_coverage                   = 40
  card.press                           = 35
  card.kick_power                      = 35
  card.kick_accuracy                   = 31
  card.kick_return                     = 62
  card.trait_clutch                    = false
  card.trait_covers_ball               = 'Brace for All Hits'
  card.trait_fights_for_extra_yards    = true
  card.trait_drops_open_passes         = false
  card.trait_makes_sideline_catches    = true
  card.trait_high_motor                = true
  card.trait_makes_aggressive_catches  = true
  card.trait_makes_rac_catches         = true
  card.trait_makes_possession_catches  = false
  card.trait_drops_open_passes         = false
  card.trait_penalty                   = 'Normal'
end
PlayerCardChemistry.create(player_card: evan_engram, chemistry: GO_DEEP, tier: 2)
PlayerCardChemistry.create(player_card: evan_engram, chemistry: PLAYMAKER, tier: 1)

crockett_gilmore = PlayerCard.create do |card|
  card.first_name                         = 'Crockett'
  card.last_name                          = 'Gilmore'
  card.team_chemistry_id                  = Chemistry.by_team_city(:baltimore).first.id
  card.program                            = NFL_REPLAYS
  card.position                           = Position::TIGHT_END
  card.overall                            = 86
  card.salary_cap_value                   = 33
  card.height_in_inches                   = 78
  card.weight_in_pounds                   = 270
  card.speed                              = 80
  card.strength                           = 71
  card.agility                            = 78
  card.acceleration                       = 84
  card.awareness                          = 76
  card.catching                           = 84
  card.jumping                            = 84
  card.stamina                            = 84
  card.injury                             = 90
  card.trucking                           = 70
  card.elusiveness                        = 62
  card.ball_carrier_vision                = 71
  card.stiff_arm                          = 73
  card.spin_move                          = 72
  card.juke_move                          = 75
  card.carrying                           = 75
  card.route_running                      = 79
  card.catch_in_traffic                   = 83
  card.spectacular_catch                  = 85
  card.release                            = 83
  card.throw_power                        = 45
  card.throw_accuracy_short               = 36
  card.throw_accuracy_mid                 = 34
  card.throw_accuracy_deep                = 31
  card.throw_on_the_run                   = 36
  card.play_action                        = 32
  card.run_block                          = 79
  card.pass_block                         = 73
  card.impact_blocking                    = 73
  card.tackle                             = 50
  card.hit_power                          = 36
  card.power_moves                        = 31
  card.finesse_moves                      = 31
  card.block_shedding                     = 53
  card.pursuit                            = 48
  card.play_recognition                   = 39
  card.man_coverage                       = 34
  card.zone_coverage                      = 39
  card.press                              = 36
  card.trait_clutch                       = false
  card.trait_covers_ball                  = 'Brace for All Hits'
  card.trait_fights_for_extra_yards       = false
  card.trait_drops_open_passes            = false
  card.trait_makes_sideline_catches       = true
  card.trait_high_motor                   = false
  card.trait_makes_aggressive_catches     = false
  card.trait_makes_rac_catches            = true
  card.trait_makes_possession_catches     = false
  card.trait_penalty                      = 'Normal'
end
PlayerCardChemistry.create(player_card: crockett_gilmore, chemistry: POUND_THE_ROCK, tier: 1)
