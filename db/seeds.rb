PlayerCard::POSITIONS.each do |position|
  require_relative "seeds/#{position}"
end
