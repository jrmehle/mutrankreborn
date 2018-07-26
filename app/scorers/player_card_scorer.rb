class PlayerCardScorer
  attr_accessor :position, :style

  def initialize(card:)
    @card         = card
    @position     = card.position
    @style        = card.style
    @game_version = @card.game_version.classify.constantize
  end

  def score
    positional_scorer.score
  end

  def positional_scorer
    @klass ||= case @position
               when position_class::HALFBACK
                 @game_version::HalfbackScorer
               when position_class::WIDE_RECEIVER
                 @game_version::WideReceiverScorer
               when position_class::QUARTERBACK
                 @game_version::QuarterbackScorer
               when position_class::TIGHT_END
                 @game_version::TightEndScorer
               when position_class::LEFT_TACKLE
                 @game_version::LeftTackleScorer
               when position_class::LEFT_GUARD
                 @game_version::LeftGuardScorer
               when position_class::CENTER
                 @game_version::CenterScorer
               when position_class::RIGHT_GUARD
                 @game_version::RightGuardScorer
               when position_class::RIGHT_TACKLE
                 @game_version::RightTackleScorer
               when position_class::FULLBACK
                 @game_version::FullbackScorer
               when position_class::FREE_SAFETY
                 @game_version::FreeSafetyScorer
               when position_class::STRONG_SAFETY
                 @game_version::StrongSafetyScorer
               when position_class::RIGHT_OUTSIDE_LINEBACKER
                 @game_version::RightOutsideLinebackerScorer
               when position_class::MIDDLE_LINEBACKER
                 @game_version::MiddleLinebackerScorer
               when position_class::LEFT_OUTSIDE_LINEBACKER
                 @game_version::LeftOutsideLinebackerScorer
               when position_class::LEFT_END
                 @game_version::LeftEndScorer
               when position_class::RIGHT_END
                 @game_version::RightEndScorer
               when position_class::DEFENSIVE_TACKLE
                 @game_version::DefensiveTackleScorer
               when position_class::CORNERBACK
                 @game_version::CornerbackScorer
               else
                 BaseScorer
               end

    @klass.new card: @card, style: @style
  end

  def position_class
    Object.const_get("#{ Mutreborn::Application::DEFAULT_GAME_VERSION.camelize }::Position")
  end
end
