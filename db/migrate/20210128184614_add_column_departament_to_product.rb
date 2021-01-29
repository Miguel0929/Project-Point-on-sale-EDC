class AddColumnDepartamentToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :departament, foreign_key: true
  end
end
