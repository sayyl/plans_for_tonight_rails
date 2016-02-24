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

ActiveRecord::Schema.define(version: 20160223203025) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumers", force: true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "corporates", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "country"
    t.integer  "phone"
    t.string   "website_url"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "business_number"
    t.boolean  "verified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "corporate_id"
    t.integer  "category_id"
    t.string   "name"
    t.string   "location"
    t.text     "description"
    t.datetime "show_date"
    t.time     "start_time"
    t.integer  "duration"
    t.string   "image"
    t.integer  "viewed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["category_id"], name: "index_events_on_category_id"
  add_index "events", ["corporate_id"], name: "index_events_on_corporate_id"

  create_table "tickets", force: true do |t|
    t.integer  "event_id"
    t.integer  "transaction_id"
    t.decimal  "price"
    t.string   "type"
    t.integer  "confirmation_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["event_id"], name: "index_tickets_on_event_id"

  create_table "transactions", force: true do |t|
    t.integer  "consumer_id"
    t.decimal  "total"
    t.boolean  "successful"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["consumer_id"], name: "index_transactions_on_consumer_id"

end
