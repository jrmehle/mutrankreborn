POUND_THE_ROCK = Chemistry.create do |chem|
  chem.name = 'Pound the Rock'
  chem.display_position = 1
  chem.tier_1_boosts = { run_block: 1, stiff_arm: 1, throw_on_the_run: 1 }
  chem.tier_2_boosts = { trucking: 1, elusiveness: 1, ball_carrier_vision: 1 }
  chem.tier_3_boosts = { run_block: 1, stiff_arm: 1, throw_on_the_run: 1 }
  chem.tier_4_boosts = { trucking: 1, elusiveness: 1, ball_carrier_vision: 1 }
  chem.tier_5_boosts = {
    run_block: 2,
    trucking: 2,
    stiff_arm: 2,
    elusiveness: 2,
    throw_on_the_run: 2,
    ball_carrier_vision: 2
  }
end

MOVE_THE_STICKS = Chemistry.create do |chem|
  chem.name = 'Move the Sticks'
  chem.display_position = 1
  chem.tier_1_boosts = { spin_move: 1, catch_in_traffic: 1, throw_accuracy_short: 1 }
  chem.tier_2_boosts = { juke_move: 1, route_running: 1, throw_accuracy_mid: 1 }
  chem.tier_3_boosts = { spin_move: 1, catch_in_traffic: 1, throw_accuracy_short: 1 }
  chem.tier_4_boosts = { juke_move: 1, route_running: 1, throw_accuracy_mid: 1 }
  chem.tier_5_boosts = {
    spin_move: 2,
    juke_move: 2,
    catch_in_traffic: 2,
    route_running: 2,
    throw_accuracy_short: 2,
    throw_accuracy_mid: 2
  }
end

GO_DEEP = Chemistry.create do |chem|
  chem.name = 'Go Deep'
  chem.display_position = 1
  chem.tier_1_boosts = { pass_block: 1, release: 1, throw_accuracy_deep: 1 }
  chem.tier_2_boosts = { throw_power: 1, spectacular_catch: 1, play_action: 1 }
  chem.tier_3_boosts = { pass_block: 1, release: 1, throw_accuracy_deep: 1 }
  chem.tier_4_boosts = { throw_power: 1, spectacular_catch: 1, play_action: 1 }
  chem.tier_5_boosts = {
    pass_block: 2,
    throw_power: 2,
    release: 2,
    spectacular_catch: 2,
    throw_accuracy_deep: 2,
    play_action: 2
  }
end

PHYSICAL_FRONT = Chemistry.create do |chem|
  chem.name = 'Physical Front'
  chem.display_position = 1
  chem.tier_1_boosts = { block_shedding: 1 }
  chem.tier_2_boosts = { tackle: 1, hit_power: 1 }
  chem.tier_3_boosts = { block_shedding: 1 }
  chem.tier_4_boosts = { tackle: 1, hit_power: 1 }
  chem.tier_5_boosts = { block_shedding: 2, tackle: 2, hit_power: 2 }
end

READ_AND_REACT = Chemistry.create do |chem|
  chem.name = 'Read and React'
  chem.display_position = 1
  chem.tier_1_boosts = { zone_coverage: 1 }
  chem.tier_2_boosts = { power_moves: 1, pursuit: 1 }
  chem.tier_3_boosts = { zone_coverage: 1 }
  chem.tier_4_boosts = { power_moves: 1, pursuit: 1 }
  chem.tier_5_boosts = { zone_coverage: 2, power_moves: 2, pursuit: 2 }
end

BLANKET_COVERAGE = Chemistry.create do |chem|
  chem.name = 'Blanket Coverage'
  chem.display_position = 1
  chem.tier_1_boosts = { man_coverage: 1 }
  chem.tier_2_boosts = { finesse_moves: 1, press: 1 }
  chem.tier_3_boosts = { man_coverage: 1 }
  chem.tier_4_boosts = { finesse_moves: 1, press: 1 }
  chem.tier_5_boosts = { man_coverage: 2, finesse_moves: 2, press: 2 }
end

TOUGHNESS = Chemistry.create do |chem|
  chem.name = 'Toughness'
  chem.display_position = 1
  chem.tier_1_boosts = { carrying: 1, impact_blocking: 1 }
  chem.tier_2_boosts = { strength: 1, catching: 1 }
  chem.tier_3_boosts = { carrying: 1, impact_blocking: 1 }
  chem.tier_4_boosts = { strength: 1, catching: 1 }
  chem.tier_5_boosts = {
    strength: 2,
    carrying: 2,
    speed: 1,
    tackle: 1,
    catching: 2,
    impact_blocking: 2
  }
end

# red chems
BATTLE_READY            = Chemistry.create(name: 'Battle Ready',            description: 'Makes tackle battle mechacine always A Button (Xbox One); X Button (PS4)', display_position: 2)
CLUTCH_KICKER           = Chemistry.create(name: 'Clutch Kicker',           description: 'Prevents the kicker from being iced in late games situations when the opponent calls a timeout', display_position: 2)
CONDUCTOR               = Chemistry.create(name: 'Conductor',               description: 'Allows QB to make two hot route adjustments prior to getting set at the line of scrimmage', display_position: 2)
ENERGIZED               = Chemistry.create(name: 'Energized',               description: 'Gives a stamina refill withe very successful ball carrier move (JKM, SPM, TRK, SFA, display_position: 2)', display_position: 2)
FOCUSED_KICKER          = Chemistry.create(name: 'Focused Kicker',          description: 'Gives player Pro difficult kick meter speed in all difficulties', display_position: 2)
FOOTSTEPS               = Chemistry.create(name: 'Footsteps',               description: 'Defensive players that will apply a higher catch-penalty to receivers when they are near the receiver during the catch point', display_position: 2)
GUNSLINGER              = Chemistry.create(name: 'Gunslinger',              description: 'Gives player faster throwing motion and ball speed on passes', display_position: 2)
HOT_HANDS               = Chemistry.create(name: 'Hot Hands',               description: 'When usering this player will gain a significant CTH rating boost', display_position: 2)
IDENTIFIED              = Chemistry.create(name: 'Identified',              description: 'Gives the ability to see your opponents user player pre-snap', display_position: 2)
JUMP_THE_SNAP           = Chemistry.create(name: 'Jump the Snap',           description: 'Gives an automatic snap jump to the player when usering a blitzing player on the line of scrimmage', display_position: 2)
LEAD_THE_WAY            = Chemistry.create(name: 'Lead the Way',            description: 'These blockers are more likely to succeed at run blocking when in a pull or lead block assignment', display_position: 2)
NEVER_STUMBLE           = Chemistry.create(name: 'Never Stumble',           description: 'Player will auto-recover in stumble situations', display_position: 2)
OUT_MY_WAY              = Chemistry.create(name: 'Out My Way',              description: 'Player is more likely to shed blocks and blow up impact block attempts in the open field. User defenders with the ability get an additional shed boost', display_position: 2)
PICK_6                  = Chemistry.create(name: 'Pick 6',                  description: 'Player receives unlimited stamina after INT until contacted or performs a special move (i.e. - juke, spin, etc.', display_position: 2)
PICK_SPECIALIST         = Chemistry.create(name: 'Pick Specialist',         description: 'These defenders are far less likely to drop interceptions unless the ball is tipped', display_position: 2)
PLAYMAKER               = Chemistry.create(name: 'Playmaker',               description: "Players' route running is adjusted more quickly when triggering Playermaker Ability (Right Stick Direction, display_position: 2)", display_position: 2)
PRIMETIME_PROTECTOR     = Chemistry.create(name: 'Primetime Protector',     description: 'These blockers excel at pass blocking in 3rd and 4th and long situations', display_position: 2)
RETURN_MAN              = Chemistry.create(name: 'Return Man',              description: 'Player receives unlimited stamina after kick-off until contacted or performs a special move (i.e. - juke, spin, etc.', display_position: 2)
SECURE_PASS_BLOCKER     = Chemistry.create(name: 'Secure Pass Blocker',     description: 'Prevents pass rusher from automatically winning any quick pass rush battles', display_position: 2)
SECURE_TACKLER          = Chemistry.create(name: 'Secure Tackler',          description: 'When user-controlled, player does not allow broken tackles; when AI-controlled, can only allow broken tackles to Tier 1 moves', display_position: 2)
SITUATIONAL_PASS_RUSHER = Chemistry.create(name: 'Situational Pass Rusher', description: 'When pass rushing, these players receive a boost to pass-rush success chance on 3rd and 4th and long situations', display_position: 2)
TIP_DRILL               = Chemistry.create(name: 'Tip Drill',               description: 'Gives player increased catch chance on tipped passes', display_position: 2)
UNDER_PRESSURE          = Chemistry.create(name: 'Under Pressure',          description: 'Player puts QB under pressure dorm further distances and increases chance of impacting throw accuracy when putting QB under pressure', display_position: 2)
UNFAKEABLE              = Chemistry.create(name: 'Unfakeable',              description: 'When user-controlled, player does not get faked out by ball carrier moves; when AI-controlled, player only be faked out by Tier 1 moves', display_position: 2)

Team::TEAMS.each do |city, team_name|
  Chemistry.create do |chemistry|
    chemistry.name = city
    chemistry.tier_1_boosts = { awareness: 1, play_recognition: 1 }
    chemistry.tier_2_boosts = { awareness: 1, play_recognition: 1 }
    chemistry.tier_3_boosts = { awareness: 1, play_recognition: 1 }
    chemistry.tier_4_boosts = { awareness: 1, play_recognition: 1 }
  end
end
