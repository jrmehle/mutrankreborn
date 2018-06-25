class CreateChemistries < ActiveRecord::Migration[5.2]
  def change
    create_table :chemistries, id: :uuid do |t|
      t.string :name
      t.text :description
      t.integer :display_position, index: true
      t.jsonb :tier_1_boosts
      t.jsonb :tier_2_boosts
      t.jsonb :tier_3_boosts
      t.jsonb :tier_4_boosts
      t.jsonb :tier_5_boosts
      t.jsonb :tier_6_boosts
      t.jsonb :tier_7_boosts
      t.jsonb :tier_8_boosts
      t.jsonb :tier_9_boosts
      t.jsonb :tier_10_boosts
      t.jsonb :tier_11_boosts
      t.jsonb :tier_12_boosts
      t.timestamps
    end
  end
end
