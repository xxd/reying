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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111015035645) do

  create_table "customer_classes", :force => true do |t|
    t.string   "name"
    t.integer  "discount"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.integer  "customer_class_id"
    t.string   "name"
    t.string   "email"
    t.integer  "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["customer_class_id"], :name => "index_customers_on_customer_class_id"

  create_table "halls", :force => true do |t|
    t.integer  "seats"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.string   "actor"
    t.string   "director"
    t.integer  "duration"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", :force => true do |t|
    t.integer  "order_id"
    t.integer  "schedule_id"
    t.decimal  "adjustedprice", :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_id"], :name => "index_order_details_on_order_id"
  add_index "order_details", ["schedule_id"], :name => "index_order_details_on_schedule_id"

  create_table "orders", :force => true do |t|
    t.integer  "customer_id"
    t.datetime "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], :name => "index_orders_on_customer_id"

  create_table "schedules", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "hall_id"
    t.decimal  "price",         :precision => 10, :scale => 0
    t.datetime "BeginDateTime"
    t.datetime "EndDateTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
