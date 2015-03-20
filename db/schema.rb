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

ActiveRecord::Schema.define(version: 20150317141703) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "borrow_period"
    t.integer  "borrowed_period"
    t.integer  "lender_id"
    t.integer  "borrower_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "picture"
  end

  add_index "items", ["borrower_id"], name: "index_items_on_borrower_id"
  add_index "items", ["lender_id"], name: "index_items_on_lender_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city_name"
    t.string   "state_name"
    t.integer  "zip_code"
    t.string   "phone_number"
    t.string   "lender_rating"
    t.string   "borrower_rating"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
