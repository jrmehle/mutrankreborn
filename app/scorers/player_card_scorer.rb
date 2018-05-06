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
               when PlayerCard::HALFBACK
                 @game_version::HalfbackScorer
               when PlayerCard::WIDE_RECEIVER
                 @game_version::WideReceiverScorer
               when PlayerCard::QUARTERBACK
                 @game_version::QuarterbackScorer
               when PlayerCard::TIGHT_END
                 @game_version::TightEndScorer
               when PlayerCard::LEFT_TACKLE
                 @game_version::LeftTackleScorer
               when PlayerCard::LEFT_GUARD
                 @game_version::LeftGuardScorer
               when PlayerCard::CENTER
                 @game_version::CenterScorer
               when PlayerCard::RIGHT_GUARD
                 @game_version::RightGuardScorer
               when PlayerCard::RIGHT_TACKLE
                 @game_version::RightTackleScorer
               when PlayerCard::FULLBACK
                 @game_version::FullbackScorer
               when PlayerCard::FREE_SAFETY
                 @game_version::FreeSafetyScorer
               when PlayerCard::STRONG_SAFETY
                 @game_version::StrongSafetyScorer
               when PlayerCard::RIGHT_OUTSIDE_LINEBACKER
                 @game_version::RightOutsideLinebackerScorer
               when PlayerCard::MIDDLE_LINEBACKER
                 @game_version::MiddleLinebackerScorer
               when PlayerCard::LEFT_OUTSIDE_LINEBACKER
                 @game_version::LeftOutsideLinebackerScorer
               when PlayerCard::LEFT_END
                 @game_version::LeftEndScorer
               when PlayerCard::RIGHT_END
                 @game_version::RightEndScorer
               when PlayerCard::DEFENSIVE_TACKLE
                 @game_version::DefensiveTackleScorer
               when PlayerCard::CORNERBACK
                 @game_version::CornerbackScorer
               else
                 BaseScorer
               end

    @klass.new card: @card, style: @style
  end
end
