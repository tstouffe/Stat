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

ActiveRecord::Schema.define(version: 20131210100429) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
  end

  add_index "courses", ["school_id"], name: "index_courses_on_school_id"

  create_table "duties", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "work_id"
  end

  add_index "duties", ["work_id"], name: "index_duties_on_work_id"

  create_table "proficiencies", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
  end

  add_index "proficiencies", ["profile_id"], name: "index_proficiencies_on_profile_id"

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "degree"
    t.integer  "years"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
  end

  add_index "schools", ["profile_id"], name: "index_schools_on_profile_id"

  create_table "users", force: true do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "works", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "years"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
  end

  add_index "works", ["profile_id"], name: "index_works_on_profile_id"

end
