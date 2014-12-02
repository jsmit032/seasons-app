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

ActiveRecord::Schema.define(version: 20141127035102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.integer  "clothing_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["clothing_id"], name: "index_categories_on_clothing_id", using: :btree

  create_table "clothing_categories", force: true do |t|
    t.integer  "clothing_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clothing_categories", ["category_id"], name: "index_clothing_categories_on_category_id", using: :btree
  add_index "clothing_categories", ["clothing_id"], name: "index_clothing_categories_on_clothing_id", using: :btree

  create_table "clothings", force: true do |t|
    t.string  "clothing_type"
    t.integer "category_id"
  end

  add_index "clothings", ["category_id"], name: "index_clothings_on_category_id", using: :btree

  create_table "destinations", force: true do |t|
    t.string   "city"
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_to_destinations", force: true do |t|
    t.integer  "user_id"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_to_destinations", ["destination_id"], name: "index_user_to_destinations_on_destination_id", using: :btree
  add_index "user_to_destinations", ["user_id"], name: "index_user_to_destinations_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weather_to_clothings", force: true do |t|
    t.integer  "clothing_id"
    t.integer  "weather_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weather_to_clothings", ["clothing_id"], name: "index_weather_to_clothings_on_clothing_id", using: :btree
  add_index "weather_to_clothings", ["weather_id"], name: "index_weather_to_clothings_on_weather_id", using: :btree

  create_table "weathers", force: true do |t|
    t.string "weather_type"
  end

end
