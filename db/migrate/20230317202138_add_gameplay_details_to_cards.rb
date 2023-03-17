class AddGameplayDetailsToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :cmc, :decimal
    add_column :cards, :color_identity, :string
    add_column :cards, :colors, :string
    add_column :cards, :layout, :string
    add_column :cards, :mana_cost, :string
    add_column :cards, :type_line, :string
    add_column :cards, :power, :string
    add_column :cards, :toughness, :string
    add_column :cards, :rarity, :string
    add_column :cards, :reprint, :boolean
  end
end
