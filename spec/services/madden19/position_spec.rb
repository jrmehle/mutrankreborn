require 'rails_helper'

RSpec.describe Madden19::Position do
  describe ".names" do
    it "returns an array of position names" do
      expect(described_class.names.size).to eq(19)
      expect(described_class.names).to eq([
        'Quarterback',
        'Halfback',
        'Wide Receiver',
        'Fullback',
        'Tight End',
        'Right Tackle',
        'Right Guard',
        'Center',
        'Left Guard',
        'Left Tackle',
        'Free Safety',
        'Strong Safety',
        'Cornerback',
        'Right Outside Linebacker',
        'Middle Linebacker',
        'Left Outside Linebacker',
        'Left End',
        'Right End',
        'Defensive Tackle'])
    end
  end

  describe ".abbreviations" do
    it "returns an array of position abbreviations" do
      expect(described_class.abbreviations.size).to eq(19)
      expect(described_class.abbreviations).to eq([
        'qb',
        'hb',
        'wr',
        'fb',
        'te',
        'rt',
        'rg',
        'c',
        'lg',
        'lt',
        'fs',
        'ss',
        'cb',
        'rolb',
        'mlb',
        'lolb',
        'le',
        're',
        'dt'])
    end
  end

  describe ".styles" do
    it "returns the styles for a given position name" do
      expect(described_class
        .styles(position_name_or_abbreviation: 'Quarterback'))
          .to eq(['dual_threat', 'pocket_passer', 'mobile'])
    end

    it "returns the styles for a given position abbreviation" do
      expect(described_class.styles(position_name_or_abbreviation: 'qb'))
        .to eq(['dual_threat', 'pocket_passer', 'mobile'])
    end
  end

  describe ".name_from_abbreviation" do
    it "returns the position abbreviation when given a name" do
      expect(described_class.name_from_abbreviation(abbreviation: 'qb'))
        .to eq('Quarterback')
    end
  end

  describe ".abbreviation_from_name" do
    it "returns the position abbreviation when given a name" do
      expect(described_class.abbreviation_from_name(position_name: 'Quarterback'))
        .to eq('qb')
    end
  end

  describe ".general_stats" do
    it "returns the general player stats" do
      expect(described_class.general_stats).to eq([
        :height_in_inches,
        :weight_in_pounds,
        :speed,
        :strength,
        :agility,
        :acceleration,
        :awareness,
        :catching,
        :jumping,
        :stamina,
        :injury
      ])
    end
  end

  describe ".offensive_stats" do
    it "returns the offensive player stats" do
      expect(described_class.offensive_stats).to eq([
        :trucking,
        :elusiveness,
        :ball_carrier_vision,
        :stiff_arm,
        :spin_move,
        :juke_move,
        :carrying,
        :route_running,
        :catch_in_traffic,
        :spectacular_catch,
        :release,
        :throw_power,
        :throw_accuracy_short,
        :throw_accuracy_mid,
        :throw_accuracy_deep,
        :throw_on_the_run,
        :play_action,
        :run_block,
        :pass_block,
        :impact_blocking
      ])
    end
  end

  describe ".defensive_stats" do
    it "returns the defensive player stats" do
      expect(described_class.defensive_stats).to eq([
        :tackle,
        :hit_power,
        :power_moves,
        :finesse_moves,
        :block_shedding,
        :pursuit,
        :play_recognition,
        :man_coverage,
        :zone_coverage,
        :press
      ])
    end
  end

  describe ".special_teams_stats" do
    it "returns the special teams player stats" do
      expect(described_class.special_teams_stats).to eq([
        :kick_power,
        :kick_accuracy,
        :kick_return,
      ])
    end
  end

  describe ".traits" do
    it "returns the player traits by position" do
      expect(described_class.traits).to eq({
        qb: [
          :trait_quarterback_style,
          :trait_throws_tight_spiral,
          :trait_senses_pressure,
          :trait_throws_ball_away,
          :trait_forces_passes,
          :trait_clutch,
          :trait_penalty
        ],
        hb: [
          :trait_clutch,
          :trait_covers_ball,
          :trait_fights_for_extra_yards,
          :trait_makes_aggressive_catches,
          :trait_makes_rac_catches,
          :trait_makes_possession_catches,
          :trait_drops_open_passes,
          :trait_makes_sideline_catches,
          :trait_high_motor,
          :trait_penalty
        ],
        wr: [
          :trait_clutch,
          :trait_covers_ball,
          :trait_fights_for_extra_yards,
          :trait_makes_aggressive_catches,
          :trait_makes_rac_catches,
          :trait_makes_possession_catches,
          :trait_drops_open_passes,
          :trait_makes_sideline_catches,
          :trait_high_motor,
          :trait_penalty
        ],
        fb: [
          :trait_clutch,
          :trait_covers_ball,
          :trait_fights_for_extra_yards,
          :trait_makes_aggressive_catches,
          :trait_makes_rac_catches,
          :trait_makes_possession_catches,
          :trait_drops_open_passes,
          :trait_makes_sideline_catches,
          :trait_high_motor,
          :trait_penalty
        ],
        te: [
          :trait_clutch,
          :trait_covers_ball,
          :trait_fights_for_extra_yards,
          :trait_drops_open_passes,
          :trait_makes_sideline_catches,
          :trait_high_motor,
          :trait_makes_aggressive_catches,
          :trait_makes_rac_catches,
          :trait_makes_possession_catches,
          :trait_drops_open_passes,
          :trait_penalty
        ],
        rt: [
          :trait_high_motor,
          :trait_penalty
        ],
        rg: [
          :trait_high_motor,
          :trait_penalty
        ],
        c: [
          :trait_high_motor,
          :trait_penalty
        ],
        lg: [
          :trait_high_motor,
          :trait_penalty
        ],
        lt: [
          :trait_high_motor,
          :trait_penalty
        ],
        fs: [
          :trait_clutch,
          :trait_high_motor,
          :trait_linebacker_style,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_plays_ball_in_air,
          :trait_penalty
        ],
        ss: [
          :trait_clutch,
          :trait_high_motor,
          :trait_linebacker_style,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_plays_ball_in_air,
          :trait_penalty
        ],
        cb: [
          :trait_clutch,
          :trait_high_motor,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_plays_ball_in_air,
          :trait_penalty
        ],
        rolb: [
          :trait_clutch,
          :trait_high_motor,
          :trait_linebacker_style,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_plays_ball_in_air,
          :trait_penalty
        ],
        mlb: [
          :trait_clutch,
          :trait_high_motor,
          :trait_linebacker_style,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_plays_ball_in_air,
          :trait_penalty
        ],
        lolb: [
          :trait_clutch,
          :trait_high_motor,
          :trait_linebacker_style,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_plays_ball_in_air,
          :trait_penalty
        ],
        le: [
          :trait_high_motor,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_penalty
        ],
        re: [
          :trait_high_motor,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_penalty
        ],
        dt: [
          :trait_high_motor,
          :trait_dl_swim_move,
          :trait_dl_spin_move,
          :trait_dl_bull_rush_move,
          :trait_big_hitter,
          :trait_strips_ball,
          :trait_penalty
        ]
      })
    end
  end
end
