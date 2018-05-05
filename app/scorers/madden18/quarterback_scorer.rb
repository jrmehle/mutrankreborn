class Madden18::QuarterbackScorer < BaseScorer
  def score
    case @style
    when 'dual_threat'
      (@card.throw_accuracy_short * 1.0) +
      (@card.throw_accuracy_mid   * 1.0) +
      (@card.throw_accuracy_deep  * 1.0) +
      (@card.speed                * 1.0) +
      (@card.acceleration         * 1.0) +
      (@card.throw_on_the_run     * 1.0) +
      (@card.throw_power          * 1.0) +
      (@card.play_action          * 1.0) +
      (@card.carrying             * 1.0) +
      (@card.elusiveness          * 1.0)
    when 'pocket_passer'
      (@card.throw_accuracy_short * 1.0) +
      (@card.throw_accuracy_mid   * 1.0) +
      (@card.throw_accuracy_deep  * 1.0) +
      (@card.throw_power          * 1.0) +
      (@card.play_action          * 1.0) +
      (@card.strength             * 1.0) +
      (@card.throw_on_the_run     * 1.0) +
      (@card.speed                * 1.0) +
      (@card.acceleration         * 1.0)
    when 'mobile'
      (@card.speed                * 1.0) +
      (@card.acceleration         * 1.0) +
      (@card.throw_on_the_run     * 1.0) +
      (@card.throw_accuracy_short * 1.0) +
      (@card.throw_accuracy_mid   * 1.0) +
      (@card.throw_accuracy_deep  * 1.0) +
      (@card.throw_power          * 1.0) +
      (@card.play_action          * 1.0) +
      (@card.carrying             * 1.0) +
      (@card.elusiveness          * 1.0)
    else
      0.0
    end
  end
end
