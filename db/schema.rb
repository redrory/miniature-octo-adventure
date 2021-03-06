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

ActiveRecord::Schema.define(:version => 20120628173736) do

  create_table "assignments", :force => true do |t|
    t.integer "excursion_id"
    t.integer "location_id"
  end

  add_index "assignments", ["excursion_id"], :name => "index_assignments_on_excursion_id"
  add_index "assignments", ["location_id"], :name => "index_assignments_on_location_id"

  create_table "customers", :force => true do |t|
    t.string   "email"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.datetime "tour_date"
    t.integer  "price"
    t.string   "tour_name"
    t.string   "tour_location"
  end

  create_table "excursions", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "photo"
    t.string   "location"
    t.string   "area"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "price"
    t.string   "type"
    t.string   "tour_type"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string    "title"
    t.text      "body"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
    t.string    "photo"
  end

end
