class CreateGameSets < ActiveRecord::Migration
  def change
    create_table :game_sets do |t|
      t.integer :games, array: true, default: []
      t.integer :total
      t.float :average
      t.date :date
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
