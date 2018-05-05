class Madden18::FullbackScorer < BaseScorer
  def score
    case @style
    when 'balanced'
      # Fullbacks are power runners who, in modern offenses,
      # are expected to primarily block for the running back.
      # Used mainly for 3rd (or 4th) and inches and goal line dives,
      # strength, trucking, carrying and other power running stats
      # are valued highly, but run blocking stats are given a premium.
      # Receiving stats are used as tie-breakers.
      (@card.run_block       * 1.1) +
      (@card.impact_blocking * 1.1) +
      (@card.strength        * 1.0) +
      (@card.carrying        * 1.0) +
      (@card.trucking        * 1.0) +
      (@card.stiff_arm       * 1.0) +
      (@card.speed           * 1.0) +
      (@card.acceleration    * 1.0) +
      (@card.awareness       * 1.0) +
      (@card.catching        * 1.0)
    when 'rushing'
      # A rushing fullback is the player you hand the ball of to on a
      # 4th and inches, the guy you absolutely need to fall forward through contact
      # to keep your drive alive.
      # Power running stats are valued highest, with blocking stats
      # used only as a tie-breaker.
      (@card.carrying            * 1.1) +
      (@card.trucking            * 1.1) +
      (@card.stiff_arm           * 1.1) +
      (@card.strength            * 1.1) +
      (@card.speed               * 1.0) +
      (@card.acceleration        * 1.0) +
      (@card.ball_carrier_vision * 1.0) +
      (@card.stamina             * 1.0) +
      (@card.juke_move           * 1.0) +
      (@card.spin_move           * 1.0)
    when 'receiving'
      (@card.speed             * 1.1) +
      (@card.acceleration      * 1.1) +
      (@card.catching          * 1.1) +
      (@card.catch_in_traffic  * 1.1) +
      (@card.spectacular_catch * 1.1) +
      (@card.route_running     * 1.1) +
      (@card.release           * 1.0) +
      (@card.run_block         * 1.0) +
      (@card.strength          * 1.0) +
      (@card.carrying          * 1.0)
    when 'blocking'
      (@card.run_block       * 1.1) +
      (@card.impact_blocking * 1.1) +
      (@card.strength        * 1.1) +
      (@card.pass_block      * 1.1) +
      (@card.speed           * 1.0) +
      (@card.acceleration    * 1.0) +
      (@card.awareness       * 1.0) +
      (@card.stamina         * 1.0)
    else
      0.0
    end
  end
end
