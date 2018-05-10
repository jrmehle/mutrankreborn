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
               when Position::HALFBACK
                 @game_version::HalfbackScorer
               when Position::WIDE_RECEIVER
                 @game_version::WideReceiverScorer
               when Position::QUARTERBACK
                 @game_version::QuarterbackScorer
               when Position::TIGHT_END
                 @game_version::TightEndScorer
               when Position::LEFT_TACKLE
                 @game_version::LeftTackleScorer
               when Position::LEFT_GUARD
                 @game_version::LeftGuardScorer
               when Position::CENTER
                 @game_version::CenterScorer
               when Position::RIGHT_GUARD
                 @game_version::RightGuardScorer
               when Position::RIGHT_TACKLE
                 @game_version::RightTackleScorer
               when Position::FULLBACK
                 @game_version::FullbackScorer
               when Position::FREE_SAFETY
                 @game_version::FreeSafetyScorer
               when Position::STRONG_SAFETY
                 @game_version::StrongSafetyScorer
               when Position::RIGHT_OUTSIDE_LINEBACKER
                 @game_version::RightOutsideLinebackerScorer
               when Position::MIDDLE_LINEBACKER
                 @game_version::MiddleLinebackerScorer
               when Position::LEFT_OUTSIDE_LINEBACKER
                 @game_version::LeftOutsideLinebackerScorer
               when Position::LEFT_END
                 @game_version::LeftEndScorer
               when Position::RIGHT_END
                 @game_version::RightEndScorer
               when Position::DEFENSIVE_TACKLE
                 @game_version::DefensiveTackleScorer
               when Position::CORNERBACK
                 @game_version::CornerbackScorer
               else
                 BaseScorer
               end

    @klass.new card: @card, style: @style
  end
end
