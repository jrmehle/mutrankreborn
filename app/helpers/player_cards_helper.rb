module PlayerCardsHelper
  def inches_to_feet_and_inches(inches)
    feet_and_inches = inches.divmod(12)
    "#{ feet_and_inches.first }'#{ feet_and_inches.last }\""
  end

  def style_title(style)
    if style == '43' then '4-3'
    elsif style == '34' then '3-4'
    else style.titleize
    end
  end

  def stat_table_header(stat, options = {})
    th_class = case options[:th_class].class.name
      when 'String' then ['text-center', options[:th_class]].join(' ').strip
      when 'Array' then ['text-center'] + options[:th_class]
      else 'text-center'
    end

    abbreviation = PlayerStat.stat_abbreviation(stat_name: stat)

    render partial: 'stat_table_header', locals: { th_class: th_class, abbreviation: abbreviation, stat: stat }
  end

  def stat_list_item(stat, value, href = nil)
    list_item_text = stat_list_item_text stat
    badge_text     = stat_badge_text stat, value

    render partial: 'stat_list_item', locals: { list_item_text: list_item_text, href: href, badge_text: badge_text }
  end

  def stat_list_item_text(stat)
    if stat == 'Height In Inches'
      'Height'
    elsif stat == 'Weight In Pounds'
      'Weight'
    elsif stat =~ /^trait/
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
  end

  def stat_badge_text(stat, value)
    if stat == 'Height In Inches'
      inches_to_feet_and_inches(value)
    elsif stat =~ /^trait_/
      if value.is_a?(String)
        value
      elsif [true, false].include? value
        value ? 'Yes' : 'No'
      end
    else
      value.to_s
    end
  end

  def display_chemistry_boosts(chemistry, tier)
    output = "Tier #{tier}: "
    output << chemistry.boosts(tier: tier).collect { |stat, boost_amount|
      "#{ PlayerStat.stat_abbreviation(stat_name: stat) } +#{ boost_amount }"
    }.join(', ')
  end
end
