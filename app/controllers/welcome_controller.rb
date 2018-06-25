class WelcomeController < ApplicationController
  def index
    @positions = Position.positions_by_side_of_ball
  end
end
