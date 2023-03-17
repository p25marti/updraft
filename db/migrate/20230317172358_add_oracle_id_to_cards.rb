class AddOracleIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :oracle_id, :string
  end
end
