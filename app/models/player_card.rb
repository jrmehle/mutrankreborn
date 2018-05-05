class PlayerCard < ApplicationRecord
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

  POSITIONS = [
    QUARTERBACK, HALFBACK, WIDE_RECEIVER,
    FULLBACK, TIGHT_END, RIGHT_TACKLE, RIGHT_GUARD,
    CENTER, LEFT_GUARD, LEFT_TACKLE, FREE_SAFETY,
    STRONG_SAFETY, CORNERBACK, RIGHT_OUTSIDE_LINEBACKER,
    MIDDLE_LINEBACKER, LEFT_OUTSIDE_LINEBACKER,
    LEFT_END, RIGHT_END, DEFENSIVE_TACKLE
  ]

  attr_accessor :score, :style

  validates :game_version, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position,
    presence: true,
    inclusion: { in: POSITIONS }
  validates :trait_covers_ball,
    inclusion: { in: ['Brace for All Hits', 'Brace vs. Medium Hitters'], allow_nil: true }
  validates :trait_plays_ball_in_air,
    inclusion: { in: %w{ Aggressive Conservative Balanced }, allow_nil: true }
  validates :trait_forces_passes,
    inclusion: { in: %w{ Aggressive Ideal }, allow_nil: true }
  validates :trait_senses_pressure,
    inclusion: { in: ['Trigger Happy', 'Ideal'], allow_nil: true }
  validates :trait_high_motor,
    inclusion: { in: [true, false], allow_nil: true }

  before_validation :set_default_game_version, on: :create

  def full_name
    [first_name, last_name].join(' ')
  end

  def scorer
    @scorer ||= PlayerCardScorer.new(card: self)
  end

  def score
    self.score = scorer.score
  end

  private

    def set_default_game_version
      self.game_version = Mutreborn::Application::DEFAULT_GAME_VERSION
    end
end
