class Madden18::DefensiveTackleScorer < BaseScorer
  def score
    case @style
    when '43'
      # In a 4-3 scheme your tackles primary job is to stuff runs up the middle
      # but they are also expected to put pressure on the QB.
      # On top of strong run stuffing stats, speed and strength are valued highly
      # as well as good power moves to bull-rush offensive linemen.
        (@card.block_shedding   * 1.1) +
        (@card.tackle           * 1.1) +
        (@card.pursuit          * 1.0) +
        (@card.strength         * 1.1) +
        (@card.speed            * 1.1) +
        (@card.acceleration     * 1.0) +
        (@card.power_moves      * 1.0) +
        (@card.awareness        * 1.0) +
        (@card.hit_power        * 1.0) +
        (@card.play_recognition * 1.0)
    when '34'
      # The nose tackle has an essential role in a 3-4 scheme and that is
      # to clog up the middle of the line by requiring multiple offensive linemen
      # to block him. By requiring the center and one or both of the guards
      # to block him, a single player can shut down the run up the middle and
      # open up gaps for your linebackers and safeties to quickly
      # get into the backfield and pressure the QB or stop the running back
      # behind the line. Weight is an essential attribute next to run stuffing stats,
      # and your nose tackles should be as heavy as possible to ensure
      # they attract double teams.
        (@card.weight_in_pounds * 1.2)
        (@card.strength         * 1.1) +
        (@card.block_shedding   * 1.1) +
        (@card.tackle           * 1.1) +
        (@card.pursuit          * 1.0) +
        (@card.speed            * 1.0) +
        (@card.acceleration     * 1.0) +
        (@card.power_moves      * 1.0) +
        (@card.awareness        * 1.0) +
        (@card.hit_power        * 1.0) +
        (@card.play_recognition * 1.0)
    else
      0.0
    end
  end
end
