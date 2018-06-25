class CreatePlayerCards < ActiveRecord::Migration[5.1]
  def change
    create_table :player_cards, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :position, index: true
      t.uuid :team_chemistry_id, index: true
      t.uuid :promotion_id, index: true
      t.integer :salary_cap_value, default: 0
      t.integer :overall, default: 0
      t.integer :height_in_inches, default: 0
      t.integer :weight_in_pounds, default: 0
      t.integer :speed, default: 0
      t.integer :strength, default: 0
      t.integer :agility, default: 0
      t.integer :acceleration, default: 0
      t.integer :awareness, default: 0
      t.integer :catching, default: 0
      t.integer :jumping, default: 0
      t.integer :stamina, default: 0
      t.integer :injury, default: 0
      t.integer :trucking, default: 0
      t.integer :elusiveness, default: 0
      t.integer :ball_carrier_vision, default: 0
      t.integer :stiff_arm, default: 0
      t.integer :spin_move, default: 0
      t.integer :juke_move, default: 0
      t.integer :carrying, default: 0
      t.integer :route_running, default: 0
      t.integer :catch_in_traffic, default: 0
      t.integer :spectacular_catch, default: 0
      t.integer :release, default: 0
      t.integer :throw_power, default: 0
      t.integer :throw_accuracy_short, default: 0
      t.integer :throw_accuracy_mid, default: 0
      t.integer :throw_accuracy_deep, default: 0
      t.integer :throw_on_the_run, default: 0
      t.integer :play_action, default: 0
      t.integer :run_block, default: 0
      t.integer :pass_block, default: 0
      t.integer :impact_blocking, default: 0
      t.integer :tackle, default: 0
      t.integer :hit_power, default: 0
      t.integer :power_moves, default: 0
      t.integer :finesse_moves, default: 0
      t.integer :block_shedding, default: 0
      t.integer :pursuit, default: 0
      t.integer :play_recognition, default: 0
      t.integer :man_coverage, default: 0
      t.integer :zone_coverage, default: 0
      t.integer :press, default: 0
      t.integer :kick_power, default: 0
      t.integer :kick_accuracy, default: 0
      t.integer :kick_return, default: 0
      t.boolean :trait_clutch
      t.boolean :trait_high_motor
      t.string :trait_linebacker_style
      t.string :trait_quarterback_style
      t.boolean :trait_dl_swim_move
      t.boolean :trait_dl_spin_move
      t.boolean :trait_dl_bull_rush_move
      t.boolean :trait_big_hitter
      t.boolean :trait_strips_ball
      t.string :trait_plays_ball_in_air
      t.string :trait_penalty
      t.string :trait_covers_ball
      t.boolean :trait_fights_for_extra_yards
      t.boolean :trait_makes_aggressive_catches
      t.boolean :trait_makes_rac_catches
      t.boolean :trait_makes_possession_catches
      t.boolean :trait_drops_open_passes
      t.boolean :trait_makes_sideline_catches
      t.string :trait_quarterback_style
      t.boolean :trait_throws_tight_spiral
      t.string :trait_senses_pressure
      t.boolean :trait_throws_ball_away
      t.string :trait_forces_passes
      t.string :game_version, index: true
      t.timestamps
    end
  end
end
