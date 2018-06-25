class PlayerCardChemistry < ApplicationRecord
  belongs_to :player_card
  belongs_to :chemistry

  validates :tier, presence: true

  delegate :abbreviation, :name, to: :chemistry, prefix: true
end
