class PlayerCardsController < ApplicationController
  def index
    player_cards = PlayerCard.where(game_version: game_version)

    if params.include?(:position)
      @player_cards = player_cards.where(position: params[:position])
    end

    if params.include?(:style) && params.include?(:position)
      player_cards = player_cards.where(position: params[:position])
      player_cards.each { |card| card.style = params[:style] }

      @player_cards = PlayerCardRanker.new(
        player_cards: player_cards,
        position: params[:position],
        style: params[:style]
      ).sorted_collection
    end
  end

  private

    def player_card_params
      params.permit(:position, :style, :game_version)
    end

    def game_version
      params[:game_version] || Mutreborn::Application::DEFAULT_GAME_VERSION
    end
end
