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

ActiveRecord::Schema.define(version: 20150413041419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "rep_1"
    t.string   "rep_2"
    t.string   "rep_3"
    t.string   "rep_4"
    t.string   "rep_5"
    t.string   "rep_6"
    t.string   "student_level"
    t.string   "job_type"
    t.integer  "interview1_rep_no"
    t.integer  "interview2_rep_no"
    t.integer  "clinic1_rep_no"
    t.integer  "clinic2_rep_no"
    t.integer  "clinic3_rep_no"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "UIN"
    t.string   "email"
    t.string   "US_citizen"
    t.string   "degree"
    t.string   "position_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "students", ["UIN"], name: "index_students_on_UIN", unique: true, using: :btree
  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree

  create_table "useradds", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "useradds", ["email"], name: "index_useradds_on_email", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
