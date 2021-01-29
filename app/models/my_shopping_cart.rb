class MyShoppingCart < ApplicationRecord
  belongs_to :product
  belongs_to :shopping_cart
  validate   :validate_units
  def set_cart_data (cart,product_id)
    @ip = cart
    @id = product_id 
  end
  def validate_units
    product = Product.find(@id) 
    shopping_cart = ShoppingCart.find(@ip).products.where(id:@id) 
    self.product.quantity -=1
    self.product.save
    #raise (product.strStock > in_cart.count).to_json
		if shopping_cart.count > product.quantity  
			errors.add(:products, "Ah registrado todas las unidades disponibles")
		end
	end
end
