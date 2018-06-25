class PlayerCardsController < ApplicationController
  def index
    player_cards = PlayerCard.where(game_version: game_version)

    if params.include?(:position)
      @player_cards = player_cards.where(position: player_card_params[:position])
    end

    if player_card_params.include?(:style) && player_card_params.include?(:position)
      player_cards = player_cards.where(position: player_card_params[:position])
      player_cards.each { |card| card.style = player_card_params[:style] }

      @player_cards = PlayerCardRanker.new(
        player_cards: player_cards,
        position: player_card_params[:position],
        style: player_card_params[:style]
      ).sorted_collection
    end
  end

  def show
    @player_card = PlayerCard.includes(:player_card_chemistries).where(id: params[:id]).first
  end

  private

    def player_card_params
      params.permit(:position, :style, :game_version)
    end

    def game_version
      params[:game_version] || Mutreborn::Application::DEFAULT_GAME_VERSION
    end
end
