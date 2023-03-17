class AddScryfallUrisToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :scryfall_uri, :string
  end
end
