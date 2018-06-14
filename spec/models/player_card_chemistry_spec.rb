require 'rails_helper'

RSpec.describe PlayerCardChemistry, type: :model do
  it { is_expected.to belong_to :player_card }
  it { is_expected.to belong_to :chemistry }

  it { is_expected.to validate_presence_of :tier }
end
