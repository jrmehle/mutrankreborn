class Position
  QUARTERBACK              = 'qb'
  HALFBACK                 = 'hb'
  WIDE_RECEIVER            = 'wr'
  FULLBACK                 = 'fb'
  TIGHT_END                = 'te'
  RIGHT_TACKLE             = 'rt'
  RIGHT_GUARD              = 'rg'
  CENTER                   = 'c'
  LEFT_GUARD               = 'lg'
  LEFT_TACKLE              = 'lt'
  FREE_SAFETY              = 'fs'
  STRONG_SAFETY            = 'ss'
  CORNERBACK               = 'cb'
  RIGHT_OUTSIDE_LINEBACKER = 'rolb'
  MIDDLE_LINEBACKER        = 'mlb'
  LEFT_OUTSIDE_LINEBACKER  = 'lolb'
  LEFT_END                 = 'le'
  RIGHT_END                = 're'
  DEFENSIVE_TACKLE         = 'dt'

  POSITIONS = {
    QUARTERBACK              => 'Quarterback',
    HALFBACK                 => 'Halfback',
    WIDE_RECEIVER            => 'Wide Receiver',
    FULLBACK                 => 'Fullback',
    TIGHT_END                => 'Tight End',
    RIGHT_TACKLE             => 'Right Tackle',
    RIGHT_GUARD              => 'Right Guard',
    CENTER                   => 'Center',
    LEFT_GUARD               => 'Left Guard',
    LEFT_TACKLE              => 'Left Tackle',
    FREE_SAFETY              => 'Free Safety',
    STRONG_SAFETY            => 'Strong Safety',
    CORNERBACK               => 'Cornerback',
    RIGHT_OUTSIDE_LINEBACKER => 'Right Outside Linebacker',
    MIDDLE_LINEBACKER        => 'Middle Linebacker',
    LEFT_OUTSIDE_LINEBACKER  => 'Left Outside Linebacker',
    LEFT_END                 => 'Left End',
    RIGHT_END                => 'Right End',
    DEFENSIVE_TACKLE         => 'Defensive Tackle'
  }

  STYLES = {
    QUARTERBACK              => %w{ dual_threat pocket_passer mobile },
    HALFBACK                 => %w{ every_down speed power receiving },
    WIDE_RECEIVER            => %w{ complete pure face_catching blocking },
    FULLBACK                 => %w{ balanced rushing receiving blocking },
    TIGHT_END                => %w{ receiving blocking face_catching },
    RIGHT_TACKLE             => %w{ balanced run_blocking pass_blocking },
    RIGHT_GUARD              => %w{ balanced run_blocking pass_blocking },
    CENTER                   => %w{ balanced run_blocking pass_blocking },
    LEFT_GUARD               => %w{ balanced run_blocking pass_blocking },
    LEFT_TACKLE              => %w{ balanced run_blocking pass_blocking },
    FREE_SAFETY              => %w{ balanced coverage run_stuffing user },
    STRONG_SAFETY            => %w{ balanced coverage run_stuffing user },
    CORNERBACK               => %w{ shut_down zone man you_shall_not_face_catch run_stuffing nickel },
    RIGHT_OUTSIDE_LINEBACKER => %w{ 43 34 balanced coverage pass_rush run_stuffing user },
    MIDDLE_LINEBACKER        => %w{ balanced coverage run_stuffing pass_rush user },
    LEFT_OUTSIDE_LINEBACKER  => %w{ 43 34 balanced coverage pass_rush run_stuffing user },
    LEFT_END                 => %w{ 43 34 },
    RIGHT_END                => %w{ 43 34 },
    DEFENSIVE_TACKLE         => %w{ 43 34 }
  }

  GENERAL_STATS = [
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
  ]

  OFFENSIVE_STATS = [
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
  ]

  DEFENSIVE_STATS = [
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
  ]

  SPECIAL_TEAMS_STATS = [
    :kick_power,
    :kick_accuracy,
    :kick_return,
  ]

  TRAITS = {
    :qb => [
      :trait_quarterback_style,
      :trait_throws_tight_spiral,
      :trait_senses_pressure,
      :trait_throws_ball_away,
      :trait_forces_passes,
      :trait_clutch,
      :trait_penalty
    ],
    :hb => [
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
    :wr => [
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
    :fb => [
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
    :te => [
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
    :rt => [
      :trait_high_motor,
      :trait_penalty
    ],
    :rg => [
      :trait_high_motor,
      :trait_penalty
    ],
    :c => [
      :trait_high_motor,
      :trait_penalty
    ],
    :lg => [
      :trait_high_motor,
      :trait_penalty
    ],
    :lt => [
      :trait_high_motor,
      :trait_penalty
    ],
    :fs => [
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
    :ss => [
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
    :cb => [
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
    :rolb => [
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
    :mlb => [
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
    :lolb => [
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
    :le => [
      :trait_high_motor,
      :trait_dl_swim_move,
      :trait_dl_spin_move,
      :trait_dl_bull_rush_move,
      :trait_big_hitter,
      :trait_strips_ball,
      :trait_penalty
    ],
    :re => [
      :trait_high_motor,
      :trait_dl_swim_move,
      :trait_dl_spin_move,
      :trait_dl_bull_rush_move,
      :trait_big_hitter,
      :trait_strips_ball,
      :trait_penalty
    ],
    :dt => [
      :trait_high_motor,
      :trait_dl_swim_move,
      :trait_dl_spin_move,
      :trait_dl_bull_rush_move,
      :trait_big_hitter,
      :trait_strips_ball,
      :trait_penalty
    ]
  }

  def self.names
    POSITIONS.values
  end

  def self.abbreviations
    POSITIONS.keys
  end

  def self.styles(position_name_or_abbreviation: )
    if abbreviations.include? position_name_or_abbreviation
      STYLES[position_name_or_abbreviation]
    elsif names.include? position_name_or_abbreviation
      STYLES[abbreviation_from_name(position_name: position_name_or_abbreviation)]
    end
  end

  def self.name_from_abbreviation(abbreviation: )
    POSITIONS[abbreviation]
  end

  def self.abbreviation_from_name(position_name: )
    POSITIONS.key(position_name)
  end

  def self.positions_by_side_of_ball
    {
      offense: [
        HALFBACK,
        WIDE_RECEIVER,
        QUARTERBACK,
        TIGHT_END,
        LEFT_TACKLE,
        LEFT_GUARD,
        CENTER,
        RIGHT_GUARD,
        RIGHT_TACKLE,
        FULLBACK
      ],
      defense: [
        FREE_SAFETY,
        STRONG_SAFETY,
        RIGHT_OUTSIDE_LINEBACKER,
        MIDDLE_LINEBACKER,
        LEFT_OUTSIDE_LINEBACKER,
        LEFT_END,
        RIGHT_END,
        DEFENSIVE_TACKLE,
        CORNERBACK
      ]
    }
  end

  def self.general_stats
    GENERAL_STATS
  end

  def self.offensive_stats
    OFFENSIVE_STATS
  end

  def self.defensive_stats
    DEFENSIVE_STATS
  end

  def self.special_teams_stats
    SPECIAL_TEAMS_STATS
  end

  def self.traits
    TRAITS
  end
end
