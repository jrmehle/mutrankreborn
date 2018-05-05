module PlayerCardsHelper
  def inches_to_feet_and_inches(inches)
    feet_and_inches = inches.divmod(12)
    "#{ feet_and_inches.first }' #{ feet_and_inches.last }\""
  end
end
