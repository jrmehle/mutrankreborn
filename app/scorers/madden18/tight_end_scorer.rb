class Madden18::TightEndScorer < BaseScorer
  def score
    case @style
    when 'receiving'
      (@card.catching          * 1.0) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.release           * 1.0) +
      (@card.route_running     * 1.0) +
      (@card.jumping           * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0) +
      (@card.height_in_inches  * 1.0)
    when 'blocking'
      (@card.run_block         * 1.0) +
      (@card.impact_blocking   * 1.0) +
      (@card.strength          * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.catching          * 1.0) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0)
    when 'face_catching'
      (@card.height_in_inches  * 1.0) +
      (@card.jumping           * 1.0) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.catching          * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0) +
      (@card.release           * 1.0)
    else
      0.0
    end
  end
end
