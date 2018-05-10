class WelcomeController < ApplicationController
  def index
    @positions = {
      offense: [
        Position::HALFBACK,
        Position::WIDE_RECEIVER,
        Position::QUARTERBACK,
        Position::TIGHT_END,
        Position::LEFT_TACKLE,
        Position::LEFT_GUARD,
        Position::CENTER,
        Position::RIGHT_GUARD,
        Position::RIGHT_TACKLE,
        Position::FULLBACK
      ],
      defense: [
        Position::FREE_SAFETY,
        Position::STRONG_SAFETY,
        Position::RIGHT_OUTSIDE_LINEBACKER,
        Position::MIDDLE_LINEBACKER,
        Position::LEFT_OUTSIDE_LINEBACKER,
        Position::LEFT_END,
        Position::RIGHT_END,
        Position::DEFENSIVE_TACKLE,
        Position::CORNERBACK
      ]
    }
  end
end
