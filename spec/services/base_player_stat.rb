class BasePlayerStat
  def self.stat_abbreviation(stat_name: )
    return nil unless self.const_get(:STATS).keys.map(&:to_s).include? stat_name.to_s
    self.const_get(:STATS)[stat_name.to_sym]
  end

  def self.stat_name(stat_abbreviation: )
    self.const_get(:STATS).key(stat_abbreviation.to_s.upcase).to_s.titleize
  end
end
