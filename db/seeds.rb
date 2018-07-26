game_version = Mutreborn::Application::DEFAULT_GAME_VERSION

if game_version == 'madden18'
  require_relative "seeds/madden18/chemistries"
  require_relative "seeds/madden18/programs"

  Madden18::Position::POSITIONS.keys.each do |position|
    require_relative "seeds/madden18/#{position}"
  end
end

