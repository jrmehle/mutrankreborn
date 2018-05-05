class Madden18::WideReceiverScorer < BaseScorer
  def score
    case @style
    when 'complete'
      # Complete receivers can do everything you'd expect a wide receiver
      # to do - run routes, beat press coverage and catch
      # the ball in any situation. But they also have the ability to
      # break big plays by gaining precious yards after catch
      # as well as do their part in run support by
      # being able to hold their blocks.
      (@card.catching          * 1.1) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.release           * 1.1) +
      (@card.route_running     * 1.1) +
      (@card.jumping           * 1.0) +
      (@card.speed             * 1.1) +
      (@card.acceleration      * 1.1) +
      (@card.height_in_inches  * 1.0) +
      (@card.run_block         * 1.1)
    when 'pure'
      # Pure wide receivers have one job - run their routes and catch the ball!
      # These are the guys you go to on crucial 3rd downs, with best at
      # position catching, speed and route running. Other factors like
      # gaining yards after catch and run blocking are used only as tie-breakers.
      (@card.height_in_inches  * 1.0) +
      (@card.speed             * 1.1) +
      (@card.acceleration      * 1.0) +
      (@card.catching          * 1.1) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.release           * 1.0) +
      (@card.route_running     * 1.1) +
      (@card.jumping           * 1.0)
    when 'face_catching'
      # Face catching involves taking the tallest receivers in the game and
      # making a mockery of outmatched corners with your stick skills.
      # Not only do these giants dwarf most corners, but they can also outjump them too,
      # and their high catching in traffic means you can throw it into
      # double coverage without fear.
      (@card.height_in_inches  * 1.1) +
      (@card.jumping           * 1.1) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.catching          * 1.0) +
      (@card.awareness         * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0) +
      (@card.release           * 1.0)
    when 'blocking'
      # Wide receivers who can run block have the ability to transform
      # short to medium runs into touchdowns. The best at their position
      # will pancake smaller corners and the very best match up against linebackers too.
      # Run blocking, impact blocking and strength are the number one attributes
      # with traditional receiver attributes used as tie breakers.
      (@card.run_block         * 1.1) +
      (@card.impact_blocking   * 1.1) +
      (@card.strength          * 1.1) +
      (@card.awareness         * 1.0) +
      (@card.catching          * 1.0) +
      (@card.catch_in_traffic  * 1.0) +
      (@card.spectacular_catch * 1.0) +
      (@card.speed             * 1.0) +
      (@card.acceleration      * 1.0)
    else
      0.0
    end
  end
end
