PlayerCard::POSITIONS.keys.each do |position|
  require_relative "seeds/#{position}"
end
