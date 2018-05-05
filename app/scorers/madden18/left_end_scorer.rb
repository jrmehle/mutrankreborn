class Madden18::LeftEndScorer < BaseScorer
  def score
    case @style
    when '43'
      # In a 4-3 scheme, your defensive ends are your primary pass rushers.
      # They need the moves to beat larger defensive tackles but they
      # also need the speed and agility to get to the QB quickly.
      # 4-3 ends are also your first line of defense against outside runs
      # so high block shedding and tackling is a must too.
      (@card.speed            * 1.1) +
      (@card.agility          * 1.1) +
      (@card.acceleration     * 1.0) +
      (@card.finesse_moves    * 1.2) +
      (@card.power_moves      * 1.2) +
      (@card.block_shedding   * 1.1) +
      (@card.tackle           * 1.1) +
      (@card.pursuit          * 1.0) +
      (@card.strength         * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.hit_power        * 1.0)
    when '34'
      # Defensive ends are the unsung heros of a 3-4 defensive scheme.
      # They have two jobs - to stop inside runs and to occupy blockers
      # on the line. By attracting double teams or dominating single blockers,
      # they free up your linebackers and safeties to make plays.
      # Don't expect huge sack or tackle numbers from them, but do expect them
      # to allow your LBs to shine. Weight and strength are valued highly,
      # as well as run stuffing stats.
      (@card.strength         * 1.1) +
      (@card.weight_in_pounds * 1.1)
      (@card.block_shedding   * 1.1) +
      (@card.tackle           * 1.1) +
      (@card.pursuit          * 1.0) +
      (@card.power_moves      * 1.0) +
      (@card.finesse_moves    * 1.0) +
      (@card.hit_power        * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0)
    else
      0.0
    end
  end
end
