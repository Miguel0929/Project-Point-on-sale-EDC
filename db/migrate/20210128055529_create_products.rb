class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :strDescripcion
      t.decimal :strPrecioUnidad
      t.integer :strStock

      t.timestamps
    end
  end
end
