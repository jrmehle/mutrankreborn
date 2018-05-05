class Madden18::HalfbackScorer < BaseScorer
  def score
    case @style
    when 'every_down'
      # Running backs you can reliably hand the ball off to on most downs.
      # Stamina is weighted highly, as well as core rushing stats like
      # speed, acceleration, carrying, elusiveness and skill moves.
      # Pass blocking and catching are also used as tie breakers.
      (@card.carrying            * 1.1) +
      (@card.speed               * 1.1) +
      (@card.acceleration        * 1.1) +
      (@card.elusiveness         * 1.1) +
      (@card.stamina             * 1.2) +
      (@card.juke_move           * 1.1) +
      (@card.spin_move           * 1.1) +
      (@card.stiff_arm           * 1.1) +
      (@card.trucking            * 1.0) +
      (@card.ball_carrier_vision * 1.0)
    when 'speed'
      # Speed backs rely on their speed and acceleration to break big runs
      # to the outside, and they rely on their agility and elusiveness
      # to avoid coughing up the ball when running through traffic.
      # Jukes and spin moves are valued highly as well as high carrying.
      # Since smaller guys tend to move faster in game than the big guys,
      # weight is also factored into the ranking.
      (@card.speed            *  1.0) +
      (@card.acceleration     *  1.0) +
      (@card.agility          *  1.0) +
      (@card.elusiveness      *  1.0) +
      (@card.juke_move        *  1.0) +
      (@card.spin_move        *  1.0) +
      (@card.carrying         *  1.0) +
      (@card.weight_in_pounds * -1.1)
    when 'power'
      # A key component of any ground and pound scheme. Power backs are
      # ideal for running up the gut and falling forward after contact for
      # four or five yards per play. Their usefulness comes from their
      # ability to shrug off or power through defenders with trucking and
      # a well timed stiff arm . These guys take a lot of hits, so
      # high carrying is essential to avoid costly hit stick fumbles.
      (@card.carrying            * 1.1) +
      (@card.trucking            * 1.1) +
      (@card.stiff_arm           * 1.1) +
      (@card.strength            * 1.0) +
      (@card.speed               * 1.0) +
      (@card.acceleration        * 1.0) +
      (@card.ball_carrier_vision * 1.0) +
      (@card.stamina             * 1.0) +
      (@card.juke_move           * 1.0) +
      (@card.spin_move           * 1.0)
    when 'receiving'
      # Running backs that are ideal for passing downs. Core receiving
      # stats such as catching and route running are highly valued,
      # while rushing stats are only used as a tie breaker.
      (@card.catching          * 1.1) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.route_running     * 1.1) +
      (@card.spectacular_catch * 1.0) +
      (@card.carrying          * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0) +
      (@card.elusiveness       * 1.0) +
      (@card.jumping           * 1.0)
    else
      0.0
    end
  end
end
