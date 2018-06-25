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
      when String then ['text-center', options[:td_class]].join(' ')
      when Array then ['text-center'] + options[:td_class]
    end

    capture_haml do
      haml_tag(:th, class: td_class, data: { abbrev: PlayerStat.stat_abbreviation(stat_name: stat) } ) do
        haml_tag(:div, stat.to_s.titleize, class: 'text-center')
      end
    end
  end

  def stat_list_item(stat, value, href = nil)
    list_item_text = if stat == 'Height In Inches'
      'Height'
    elsif stat == 'Weight In Pounds'
      'Weight'
    elsif stat =~ /^trait_/
      if stat == :trait_dl_swim_move
        'Defensive Line Swim Move'
      elsif stat == :trait_dl_spin_move
        'Defensive Line Spin Move'
      elsif stat == :trait_dl_bull_rush_move
        'Defensive Line Bull Rush Move'
      else
        stat.to_s.gsub(/^trait_/, '').titleize
      end
    else
      stat
    end

    if href
      list_item_text = link_to(list_item_text, href).html_safe
    end

    badge_text = if stat == :height_in_inches
      inches_to_feet_and_inches(value)
    elsif stat == :weight_in_pounds
      value.to_s
    elsif stat =~ /^trait_/
      if value.is_a?(String)
        value
      elsif [true, false].include? value
        value ? 'Yes' : 'No'
      end
    else
      value.to_s
    end

    capture_haml do
      haml_tag :li, class: 'list-group-item d-flex justify-content-between align-items-center' do
        haml_concat(list_item_text)
        haml_tag :span, badge_text, class: 'badge badge-pill'
      end
    end
  end
end
