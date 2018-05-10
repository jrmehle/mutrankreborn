require 'rails_helper'

RSpec.describe PlayerCardsHelper, type: :helper do
  describe "#inches_to_feet_and_inches" do
    it "converts inches to feet and inches" do
      expect(helper.inches_to_feet_and_inches(72)).to eq('6\' 0"')
    end
  end

  describe "#style_title" do
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
end
