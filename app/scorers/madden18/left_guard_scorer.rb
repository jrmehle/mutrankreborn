class Madden18::LeftGuardScorer < BaseScorer
  def score
    case @style
    when 'balanced'
      (@card.pass_block      * 1.1) +
      (@card.run_block       * 1.1) +
      (@card.impact_blocking * 1.0) +
      (@card.strength        * 1.0) +
      (@card.awareness       * 1.0) +
      (@card.stamina         * 1.0) +
      (@card.speed           * 1.0) +
      (@card.acceleration    * 1.0)
    when 'run_blocking'
      # The ideal lineman for running the ball has a mixture of power,
      # quickness and awareness. Run blocking is obviously the key stat here,
      # but impact blocking is also very important as serving up pancakes
      # keeps the linemen in front of the HB and making more crucial blocks.
      # Being a lead blocker or when pulling off the line is also where speed helps
      # to get out in front of the quickest running backs.
      (@card.run_block       * 1.2) +
      (@card.impact_blocking * 1.0) +
      (@card.awareness       * 1.1) +
      (@card.stamina         * 1.0) +
      (@card.strength        * 1.1) +
      (@card.speed           * 1.1) +
      (@card.acceleration    * 1.0) +
      (@card.agility         * 1.0) +
      (@card.pass_block      * 1.0)
    when 'pass_blocking'
      # An ideal pass blocker has a good mix of power and agility to defend against
      # both finesse and power pass rushers, and the intelligence
      # to make the right decision against the blitz.
      (@card.pass_block      * 1.2) +
      (@card.awareness       * 1.0) +
      (@card.impact_blocking * 1.0) +
      (@card.stamina         * 1.0) +
      (@card.strength        * 1.1) +
      (@card.speed           * 1.0) +
      (@card.acceleration    * 1.0) +
      (@card.agility         * 1.1) +
      (@card.run_block       * 1.0)
    else
      0.0
    end
  end
end
