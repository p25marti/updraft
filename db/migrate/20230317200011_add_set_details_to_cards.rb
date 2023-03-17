class AddSetDetailsToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :set, :string
    add_column :cards, :set_id, :string
  end
end
