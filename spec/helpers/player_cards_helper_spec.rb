require 'rails_helper'

RSpec.describe PlayerCardsHelper, type: :helper do
  let(:mts_chem) do
    Chemistry.create do |chem|
      chem.name = 'Move the Sticks'
      chem.display_position = 1
      chem.tier_1_boosts = { spin_move: 1, catch_in_traffic: 1, throw_accuracy_short: 1 }
      chem.tier_2_boosts = { juke_move: 1, route_running: 1, throw_accuracy_mid: 1 }
      chem.tier_3_boosts = { spin_move: 1, catch_in_traffic: 1, throw_accuracy_short: 1 }
      chem.tier_4_boosts = { juke_move: 1, route_running: 1, throw_accuracy_mid: 1 }
      chem.tier_5_boosts = {
        spin_move: 2,
        juke_move: 2,
        catch_in_traffic: 2,
        route_running: 2,
        throw_accuracy_short: 2,
        throw_accuracy_mid: 2
      }
    end
  end

  describe ".inches_to_feet_and_inches" do
    it "converts inches to feet and inches" do
      expect(helper.inches_to_feet_and_inches(72)).to eq('6\'0"')
    end
  end

  describe ".style_title" do
    it "puts a dash in 43" do
      expect(helper.style_title('43')).to eq('4-3')
    end

    it "puts a dash in 34" do
      expect(helper.style_title('34')).to eq('3-4')
    end

    it "titleizes" do
      expect(helper.style_title('dual_threat')).to eq('Dual Threat')
    end
  end

  describe ".stat_table_header" do
    it "allows the th class to be set as a string" do
      expect(helper.stat_table_header(:speed, th_class: 'my-test-class'))
        .to match(/class=\"text-center my-test-class\"/)
    end

    it "allows the th class to be set as an array" do
      expect(helper.stat_table_header(:speed, th_class: ['my-test-class', 'my-other-class']))
        .to match(/class=\"text-center my-test-class my-other-class\"/)
    end

    it "always has text-center class on the th" do
      expect(helper.stat_table_header(:speed)).to match(/^<th class="text-center"/)
    end

    it "adds the stat abbreviation to a data attribute" do
      expect(helper.stat_table_header(:speed)).to match(/data\-abbrev=\"SPD\"/)
    end
  end

  describe ".stat_list_item" do
    it "returns the html list item text" do
      expect(helper.stat_list_item('Speed', 99))
        .to match(/^<li class=".*">\nSpeed.*\n.*\n<\/li>$/)
    end

    it "returns the html list item badge" do
      expect(helper.stat_list_item('Speed', 99))
        .to match(/<span class="badge badge-pill">99<\/span>/)
    end

    it "returns the html with a link if href passed" do
      expect(helper.stat_list_item('Speed', 99, 'http://example.com'))
        .to match(/<a href="http:\/\/example\.com">Speed<\/a>/)
    end
  end

  describe ".stat_list_item_text" do
    it "returns 'Height' when 'Height In Inches'" do
      expect(helper.stat_list_item_text('Height In Inches')).to eq('Height')
    end

    it "returns 'Weight' when 'Weight In Pounds'" do
      expect(helper.stat_list_item_text('Weight In Pounds')).to eq('Weight')
    end

    it "returns 'Defensive Line Swim Move' when :trait_dl_swim_move" do
      expect(helper.stat_list_item_text(:trait_dl_swim_move)).to eq('Defensive Line Swim Move')
    end

    it "returns 'Defensive Line Spin Move' when :trait_dl_spin_move" do
      expect(helper.stat_list_item_text(:trait_dl_spin_move)).to eq('Defensive Line Spin Move')
    end

    it "returns 'Defensive Line Bull Rush Move' when :trait_dl_swim_move" do
      expect(helper.stat_list_item_text(:trait_dl_bull_rush_move)).to eq('Defensive Line Bull Rush Move')
    end

    it "returns a generically titleized trait" do
      expect(helper.stat_list_item_text(:trait_high_motor)).to eq('High Motor')
    end

    it "returns the stat back again if unrecognized" do
      expect(helper.stat_list_item_text("Awareness")).to eq('Awareness')
    end
  end

  describe ".stat_badge_text" do
    it "returns the height in inches and when 'Height In Inches'" do
      expect(helper.stat_badge_text('Height In Inches', 72)).to eq('6\'0"')
    end

    it "returns the value as is when stat is a trait and value is a string" do
      expect(helper.stat_badge_text(:trait_penalty, 'Balanced')).to eq('Balanced')
    end

    it "returns 'Yes' when stat is a trait and value is a boolean" do
      expect(helper.stat_badge_text(:trait_high_motor, true)).to eq('Yes')
    end

    it "returns 'No' when stat is a trait and value is a boolean" do
      expect(helper.stat_badge_text(:trait_high_motor, false)).to eq('No')
    end

    it "returns '55' when stat is normal and value is an integer" do
      expect(helper.stat_badge_text(:speed, 99)).to eq('99')
    end
  end

  describe ".display_chemistry_boosts" do
    it "returns the tier along with the boosts" do
      expect(helper.display_chemistry_boosts(mts_chem, 1))
        .to eq('Tier 1: SPM +1, CIT +1, TAS +1')
    end
  end
end
