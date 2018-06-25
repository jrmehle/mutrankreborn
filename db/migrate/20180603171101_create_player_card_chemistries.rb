class CreatePlayerCardChemistries < ActiveRecord::Migration[5.2]
  def change
    create_table :player_card_chemistries, id: :uuid do |t|
      t.uuid :player_card_id, index: true
      t.uuid :chemistry_id, index: true
      t.integer :tier, default: 1, index: true

      t.timestamps
    end
  end
end
