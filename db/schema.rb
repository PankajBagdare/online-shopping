# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160620133705) do

  create_table "cart_items", force: :cascade do |t|
    t.integer  "product_id",    limit: 4
    t.string   "product_name",  limit: 255
    t.float    "product_price", limit: 24
    t.integer  "quantity",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "cart_items", ["product_id"], name: "fk_rails_681a180e84", using: :btree

  create_table "carts", force: :cascade do |t|
    t.integer  "customer_id",  limit: 4
    t.integer  "cart_item_id", limit: 4
    t.float    "total_price",  limit: 24
    t.integer  "quantity",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "carts", ["customer_id"], name: "fk_rails_e02ab95379", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "user_name",  limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.string   "address",    limit: 255
    t.integer  "phone",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id",    limit: 4
    t.integer  "quantity",      limit: 4
    t.float    "product_price", limit: 24
    t.string   "product_name",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "order_items", ["product_id"], name: "fk_rails_f1a29ddd47", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id",      limit: 4
    t.integer  "order_item_id",    limit: 4
    t.date     "order_date"
    t.float    "total_price",      limit: 24
    t.string   "shipping_address", limit: 255
    t.string   "delivery_address", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "orders", ["customer_id"], name: "fk_rails_3dad120da9", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.float    "price",        limit: 24
    t.integer  "quantity",     limit: 4
    t.string   "image_source", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products_categories", force: :cascade do |t|
    t.integer "product_id",  limit: 4
    t.integer "category_id", limit: 4
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.integer  "order_id",    limit: 4
    t.string   "type",        limit: 255
    t.float    "amount",      limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "transactions", ["customer_id"], name: "fk_rails_984bd8f159", using: :btree
  add_index "transactions", ["order_id"], name: "fk_rails_59d791a33f", using: :btree

  add_foreign_key "cart_items", "products"
  add_foreign_key "carts", "customers"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "customers"
  add_foreign_key "transactions", "customers"
  add_foreign_key "transactions", "orders"
end
