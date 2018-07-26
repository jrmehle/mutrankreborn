module ApplicationHelper
  def current_game_version
    Mutreborn::Application::DEFAULT_GAME_VERSION.camelize.constantize
  end
end
