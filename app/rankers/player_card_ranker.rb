class PlayerCardRanker
  attr_reader :position, :style, :game_version

  def initialize(player_cards: , position: , style:)
    @player_cards = player_cards
    @position     = position
    @style        = style
  end

  # TODO: support per-position tie-breakers
  def sorted_collection
    @player_cards.sort_by(&:score).reverse
  end
end
