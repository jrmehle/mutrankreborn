module PlayerCardsHelper
  def inches_to_feet_and_inches(inches)
    feet_and_inches = inches.divmod(12)
    "#{ feet_and_inches.first }' #{ feet_and_inches.last }\""
  end

  def style_title(style)
    if style == '43' then '4-3'
    elsif style == '34' then '3-4'
    else style.titleize
    end
  end
end
