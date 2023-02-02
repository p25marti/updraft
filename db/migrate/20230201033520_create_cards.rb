class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :scryfall_id
      t.string :name
      t.string :oracle_text

      t.timestamps
    end
  end
end
