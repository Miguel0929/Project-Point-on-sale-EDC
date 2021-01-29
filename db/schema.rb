# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_29_194940) do

  create_table "departaments", force: :cascade do |t|
    t.string "strDepartament"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_payments", force: :cascade do |t|
    t.string "email"
    t.string "ip"
    t.string "status"
    t.string "price"
    t.string "paypal_id"
    t.string "total"
    t.integer "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_cart_id"], name: "index_my_payments_on_shopping_cart_id"
  end

  create_table "my_shopping_carts", force: :cascade do |t|
    t.integer "product_id"
    t.integer "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_my_shopping_carts_on_product_id"
    t.index ["shopping_cart_id"], name: "index_my_shopping_carts_on_shopping_cart_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "strDescripcion"
    t.string "strPrecioUnidad"
    t.string "strStock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "supplier_id"
    t.string "img_product_file_name"
    t.string "img_product_content_type"
    t.integer "img_product_file_size"
    t.datetime "img_product_updated_at"
    t.integer "departament_id"
    t.integer "quantity"
    t.float "price"
    t.index ["departament_id"], name: "index_products_on_departament_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string "ip"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "strNombreProveedor"
    t.string "strDireccion"
    t.string "strTelefono"
    t.string "strCelular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
