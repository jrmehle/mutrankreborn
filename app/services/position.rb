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
end
