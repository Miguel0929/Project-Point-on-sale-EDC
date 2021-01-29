class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :quantity, :integer
    add_column :products, :price, :float
  end
end
