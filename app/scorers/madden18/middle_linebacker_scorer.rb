class Madden18::MiddleLinebackerScorer < BaseScorer
  def score
    case @style
    when 'balanced'
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.tackle           * 1.0) +
      (@card.pursuit          * 1.0) +
      (@card.block_shedding   * 1.0) +
      (@card.hit_power        * 1.0) +
      (@card.zone_coverage    * 1.0) +
      (@card.catching         * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.awareness        * 1.0)
    when 'coverage'
      (@card.zone_coverage    * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.catching         * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.height_in_inches * 1.0) +
      (@card.jumping          * 1.0) +
      (@card.man_coverage     * 1.0) +
      (@card.catch_in_traffic * 1.0)
    when 'run_stuffing'
      (@card.tackle           * 1.0) +
      (@card.pursuit          * 1.0) +
      (@card.block_shedding   * 1.0) +
      (@card.hit_power        * 1.0) +
      (@card.strength         * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition * 1.0)
    when 'pass_rush'
      (@card.power_moves   * 1.0) +
      (@card.finesse_moves * 1.0) +
      (@card.strength      * 1.0) +
      (@card.speed         * 1.0) +
      (@card.acceleration  * 1.0) +
      (@card.agility       * 1.0) +
      (@card.awareness     * 1.0)
    when 'user'
      (@card.height_in_inches  * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0) +
      (@card.agility           * 1.0) +
      (@card.jumping           * 1.0) +
      (@card.hit_power         * 1.0) +
      (@card.tackle            * 1.0) +
      (@card.catching          * 1.0) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0)
    else
      0.0
    end
  end
end
