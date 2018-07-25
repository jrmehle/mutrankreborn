require 'rails_helper'

RSpec.describe Program, type: :model do
  # Associations
  it { is_expected.to have_many :player_cards }
end
