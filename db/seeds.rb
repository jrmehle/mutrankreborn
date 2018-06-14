require_relative "seeds/chemistries"

Position::POSITIONS.keys.each do |position|
  require_relative "seeds/#{position}"
end


