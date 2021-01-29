class AddColumnImageToProduct < ActiveRecord::Migration[5.2]
  def change
    add_attachment :products, :img_product
  end
end
