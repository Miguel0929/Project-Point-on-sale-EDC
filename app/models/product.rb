class Product < ApplicationRecord
    belongs_to :supplier
    belongs_to :departament
    validates :strDescripcion, :price, :quantity, :supplier_id ,presence: true
    validates :strDescripcion, length: { in: 10..100 }
    validates :quantity, numericality: true

    def paypal_form
        {id: id, nombre: strDescripcion, sku: :item, precio: price, currency:"USD", cantidad: 1 }
    end
    has_attached_file :img_product,
    styles: {
        #thumb:   { geometry: '320x240>',     format: :png, convert_options: " -background white -gravity center -extent 320x240"}, #80x60
        medium:  { geometry:  "300x300>",    format: :png, convert_options: " -background white -gravity center -extent 300x300"},
        big: 	 { geometry:  "500x500>",    format: :png, convert_options: " -background white -gravity center -extent 500x500"},
        ban:     { geometry: '630x315>' ,    format: :png, convert_options: " -background white -gravity center -extent 630x315"},
        hd: 	 { geometry: '920x560>' ,    format: :png, convert_options: " -background '#C2FE34' -gravity center -extent 920x560"},
        #hd:      { geometry: '1920x1680>',   format: :png, convert_options: " -background white -gravity center -extent 1920x1680"}
        }, 
        default_url: "/images/:style/missing.png"
validates_attachment_content_type :img_product, content_type: /\Aimage\/.*\z/
end
