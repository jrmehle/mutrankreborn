class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs, id: :uuid do |t|
      t.string :name
      t.string :abbreviation
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :game_version, index: true

      t.timestamps
    end
  end
end
