class ShoppingCart < ApplicationRecord
    include AASM
    after_destroy :aumentar_stock
    has_many :my_shopping_carts, :dependent => :destroy
    has_many :products, through: :my_shopping_carts
    aasm column: "status" do 
        state :created, initial: true
        state :payed
        event :pay do
          transitions from: :created, to: :payed
        end
      end
      def in_cart
        products = Array.new
        size = 0
        self.products.order("id ASC").each do |product|
          if products.empty? || products[size][:id] != product[:id]
            products.push(product.paypal_form)
          else
            products[size][:cantidad] += 1 
          end
          size = products.length - 1
        end
        return products
      end
      def items
        self.products.map{|product| product.paypal_form  }
      end
      def total
        products.sum(:price)
      end
end
