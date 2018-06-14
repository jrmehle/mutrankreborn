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

  def stat_table_header(stat, options = {})
    td_class = case options[:td_class].class.name
      when String then "#{options[:td_class]} text-center"
      when Array then ['text-center'] + options[:td_class]
    end

    capture_haml do
      haml_tag(:th, class: td_class, data: { abbrev: PlayerStat.stat_abbreviation(stat_name: stat) } ) do
        haml_tag(:div, stat.to_s.titleize, class: 'text-center')
      end
    end
  end
end
