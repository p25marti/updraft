class AddSetReleasesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :set_releases do |t|
      t.string :release_id
      t.string :code
      t.string :name
      t.string :set_type
      t.date :released_at
      t.integer :card_count
      t.string :icon_svg_uri

      t.timestamps
    end
  end
end
