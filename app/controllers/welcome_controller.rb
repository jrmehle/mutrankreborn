class WelcomeController < ApplicationController
  def index
    @positions = {
      offense: [
        PlayerCard::HALFBACK,
        PlayerCard::WIDE_RECEIVER,
        PlayerCard::QUARTERBACK,
        PlayerCard::TIGHT_END,
        PlayerCard::LEFT_TACKLE,
        PlayerCard::LEFT_GUARD,
        PlayerCard::CENTER,
        PlayerCard::RIGHT_GUARD,
        PlayerCard::RIGHT_TACKLE,
        PlayerCard::FULLBACK
      ],
      defense: [
        PlayerCard::FREE_SAFETY,
        PlayerCard::STRONG_SAFETY,
        PlayerCard::RIGHT_OUTSIDE_LINEBACKER,
        PlayerCard::MIDDLE_LINEBACKER,
        PlayerCard::LEFT_OUTSIDE_LINEBACKER,
        PlayerCard::LEFT_END,
        PlayerCard::RIGHT_END,
        PlayerCard::DEFENSIVE_TACKLE,
        PlayerCard::CORNERBACK
      ]
    }
  end
end
