class PlayerCardChemistry < ApplicationRecord
  belongs_to :player_card
  belongs_to :chemistry

  validates :tier, presence: true
end
