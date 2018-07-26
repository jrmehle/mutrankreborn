class PlayerCard < ApplicationRecord
  attr_accessor :score, :style

  belongs_to :team_chemistry, class_name: 'Chemistry', foreign_key: :team_chemistry_id
  belongs_to :program
  has_many :player_card_chemistries
  has_many :chemistries, through: :player_card_chemistries


  validates :game_version, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position,
    presence: true,
    inclusion: { in: Object.const_get("#{ Mutreborn::Application::DEFAULT_GAME_VERSION.camelize }::Position").abbreviations }
  validates :overall, inclusion: { in: 1..99 }
  validates :trait_covers_ball,
    inclusion: { in: ['Always', 'Brace for All Hits', 'Brace vs. Medium Hitters'], allow_nil: true }
  validates :trait_plays_ball_in_air,
    inclusion: { in: %w{ Aggressive Conservative Balanced }, allow_nil: true }
  validates :trait_forces_passes,
    inclusion: { in: %w{ Aggressive Ideal }, allow_nil: true }
  validates :trait_senses_pressure,
    inclusion: { in: ['Trigger Happy', 'Ideal'], allow_nil: true }
  validates :trait_penalty,
    inclusion: { in: %w{ Normal Undisciplined Disciplined }, allow_nil: true }
  validates :trait_linebacker_style,
    inclusion: { in: ['Balanced', 'Cover LB'], allow_nil: true }

  before_validation :set_default_game_version, on: :create

  delegate :name, :abbreviation, to: :team_chemistry, prefix: true
  delegate :name, :abbreviation, to: :program, prefix: true

  def full_name
    [first_name, last_name].join(' ').strip
  end

  def scorer
    @scorer ||= PlayerCardScorer.new(card: self)
  end

  def score
    self.score = scorer.score
  end

  def chemistries_for_display
    player_card_chemistries.joins(:chemistry).order('player_card_chemistries.tier DESC, chemistries.display_position')
  end

  private

    def set_default_game_version
      self.game_version = Mutreborn::Application::DEFAULT_GAME_VERSION
    end
end
