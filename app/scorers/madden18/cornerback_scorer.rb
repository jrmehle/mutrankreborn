class Madden18::CornerbackScorer < BaseScorer
  def score
    case @style
    when 'shut_down'
      # The shut-down corner is expected to be ready to face
      # any type of scheme your opponent has. They should be
      # fast and agile enough to match the best receivers and
      # make breaks on the toughest routes, but also be big and strong enough
      # to compete with the dreaded face catchers and press effectively
      # on the line. Catching is valued highly as it's crucial they turn throws
      # into coverage into turnovers. Their ability to make tackles and
      # help out in run defense is used as a tie-breaker.
      (@card.height_in_inches * 1.0) +
      (@card.jumping          * 1.0) +
      (@card.zone_coverage    * 1.0) +
      (@card.man_coverage     * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.catching         * 1.0) +
      (@card.agility          * 1.0) +
      (@card.press            * 1.0)
    when 'zone'
      (@card.zone_coverage    * 1.2) +
      (@card.height_in_inches * 1.1) +
      (@card.jumping          * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.catching         * 1.0) +
      (@card.agility          * 1.0) +
      (@card.press            * 1.0) +
      (@card.man_coverage     * 1.0)
    when 'man'
      (@card.man_coverage     * 1.2) +
      (@card.height_in_inches * 1.1) +
      (@card.jumping          * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.catching         * 1.0) +
      (@card.agility          * 1.0) +
      (@card.press            * 1.0) +
      (@card.zone_coverage    * 1.0)
    when 'you_shall_not_face_catch'
      (@card.height_in_inches * 1.0) +
      (@card.jumping          * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.catching         * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition  * 1.0) +
      (@card.press            * 1.0) +
      (@card.zone_coverage    * 1.0) +
      (@card.man_coverage     * 1.0)
    when 'run_stuffing'
      (@card.tackle           * 1.0) +
      (@card.block_shedding   * 1.0) +
      (@card.pursuit          * 1.0) +
      (@card.strength         * 1.0) +
      (@card.speed            * 1.0) +
      (@card.acceleration     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.zone_coverage    * 1.0) +
      (@card.man_coverage     * 1.0)
    when 'nickel'
      # Having the right player as your CB3 is crucial to getting big stops
      # on those 3rd and 4th down situations. The nickel CB takes the place
      # of a linebacker to bolster your pass coverage, but against your pass defense
      # your opponent could be tempted to run the ball. To counter this,
      # your nickel corner should be as close to a safety or linebacker
      # as they are to a number one corner. Frequently matched up against
      # quick and nimble slot receivers, great agility and speed is essential
      # in addition to their coverage stats. If your opponent
      # does catch you by surprise with the run, high play recognition and
      # good run stuffing will be invaluable.
      (@card.speed            * 1.1) +
      (@card.acceleration     * 1.0) +
      (@card.agility          * 1.1) +
      (@card.zone_coverage    * 1.0) +
      (@card.man_coverage     * 1.0) +
      (@card.awareness        * 1.0) +
      (@card.play_recognition * 1.0) +
      (@card.catching         * 1.0) +
      (@card.catch_in_traffic * 1.0) +
      (@card.tackle           * 1.0)
    else
      0.0
    end
  end
end
