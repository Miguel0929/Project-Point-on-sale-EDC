class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :strNombreProveedor
      t.string :strDireccion
      t.string :strTelefono
      t.string :strCelular

      t.timestamps
    end
  end
end
