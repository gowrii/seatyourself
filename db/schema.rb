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

ActiveRecord::Schema.define(version: 20131118194728) do

  create_table "reservations", force: true do |t|
    t.datetime "reserve_time"
    t.integer  "seats"
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "neighborhood"
    t.string   "cuisine"
    t.integer  "price_range"
    t.string   "dining_style"
    t.string   "website"
    t.string   "email"
    t.integer  "phone_no"
    t.string   "hours"
    t.string   "special_meals"
    t.string   "description"
    t.integer  "capacity"
    t.string   "mon_open"
    t.string   "mon_close"
    t.string   "tue_open"
    t.string   "tue_close"
    t.string   "wed_open"
    t.string   "wed_close"
    t.string   "thu_open"
    t.string   "thu_close"
    t.string   "fri_open"
    t.string   "fri_close"
    t.string   "sat_open"
    t.string   "sat_close"
    t.string   "sun_open"
    t.string   "sun_close"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "postal_code"
    t.string   "province"
    t.integer  "telephone_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
