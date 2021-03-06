# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_18_012214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "chemistries", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "display_position"
    t.jsonb "tier_1_boosts"
    t.jsonb "tier_2_boosts"
    t.jsonb "tier_3_boosts"
    t.jsonb "tier_4_boosts"
    t.jsonb "tier_5_boosts"
    t.jsonb "tier_6_boosts"
    t.jsonb "tier_7_boosts"
    t.jsonb "tier_8_boosts"
    t.jsonb "tier_9_boosts"
    t.jsonb "tier_10_boosts"
    t.jsonb "tier_11_boosts"
    t.jsonb "tier_12_boosts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["display_position"], name: "index_chemistries_on_display_position"
  end

  create_table "player_card_chemistries", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "player_card_id"
    t.uuid "chemistry_id"
    t.integer "tier", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chemistry_id"], name: "index_player_card_chemistries_on_chemistry_id"
    t.index ["player_card_id"], name: "index_player_card_chemistries_on_player_card_id"
    t.index ["tier"], name: "index_player_card_chemistries_on_tier"
  end

  create_table "player_cards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.uuid "team_chemistry_id"
    t.uuid "program_id"
    t.integer "salary_cap_value", default: 0
    t.integer "overall", default: 0
    t.integer "height_in_inches", default: 0
    t.integer "weight_in_pounds", default: 0
    t.integer "speed", default: 0
    t.integer "strength", default: 0
    t.integer "agility", default: 0
    t.integer "acceleration", default: 0
    t.integer "awareness", default: 0
    t.integer "catching", default: 0
    t.integer "jumping", default: 0
    t.integer "stamina", default: 0
    t.integer "injury", default: 0
    t.integer "trucking", default: 0
    t.integer "elusiveness", default: 0
    t.integer "ball_carrier_vision", default: 0
    t.integer "stiff_arm", default: 0
    t.integer "spin_move", default: 0
    t.integer "juke_move", default: 0
    t.integer "carrying", default: 0
    t.integer "route_running", default: 0
    t.integer "catch_in_traffic", default: 0
    t.integer "spectacular_catch", default: 0
    t.integer "release", default: 0
    t.integer "throw_power", default: 0
    t.integer "throw_accuracy_short", default: 0
    t.integer "throw_accuracy_mid", default: 0
    t.integer "throw_accuracy_deep", default: 0
    t.integer "throw_on_the_run", default: 0
    t.integer "play_action", default: 0
    t.integer "run_block", default: 0
    t.integer "pass_block", default: 0
    t.integer "impact_blocking", default: 0
    t.integer "tackle", default: 0
    t.integer "hit_power", default: 0
    t.integer "power_moves", default: 0
    t.integer "finesse_moves", default: 0
    t.integer "block_shedding", default: 0
    t.integer "pursuit", default: 0
    t.integer "play_recognition", default: 0
    t.integer "man_coverage", default: 0
    t.integer "zone_coverage", default: 0
    t.integer "press", default: 0
    t.integer "kick_power", default: 0
    t.integer "kick_accuracy", default: 0
    t.integer "kick_return", default: 0
    t.boolean "trait_clutch"
    t.boolean "trait_high_motor"
    t.string "trait_linebacker_style"
    t.string "trait_quarterback_style"
    t.boolean "trait_dl_swim_move"
    t.boolean "trait_dl_spin_move"
    t.boolean "trait_dl_bull_rush_move"
    t.boolean "trait_big_hitter"
    t.boolean "trait_strips_ball"
    t.string "trait_plays_ball_in_air"
    t.string "trait_penalty"
    t.string "trait_covers_ball"
    t.boolean "trait_fights_for_extra_yards"
    t.boolean "trait_makes_aggressive_catches"
    t.boolean "trait_makes_rac_catches"
    t.boolean "trait_makes_possession_catches"
    t.boolean "trait_drops_open_passes"
    t.boolean "trait_makes_sideline_catches"
    t.boolean "trait_throws_tight_spiral"
    t.string "trait_senses_pressure"
    t.boolean "trait_throws_ball_away"
    t.string "trait_forces_passes"
    t.string "game_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_version"], name: "index_player_cards_on_game_version"
    t.index ["position"], name: "index_player_cards_on_position"
    t.index ["program_id"], name: "index_player_cards_on_program_id"
    t.index ["team_chemistry_id"], name: "index_player_cards_on_team_chemistry_id"
  end

  create_table "programs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.string "game_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_version"], name: "index_programs_on_game_version"
  end

end
