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

ActiveRecord::Schema.define(version: 20150403012451) do

  create_table "appointments", force: :cascade do |t|
    t.string   "Student_Name"
    t.string   "Company_Name"
    t.string   "Time_Slot_integer"
    t.string   "Event_integer"
    t.integer  "UIN"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "Name"
    t.string   "Representative_1"
    t.string   "Representative_2"
    t.string   "Representative_3"
    t.string   "Representative_4"
    t.string   "Representative_5"
    t.string   "Representative_6"
    t.string   "Contact_Name"
    t.string   "Contact_Email"
    t.integer  "Monday_timeslot"
    t.integer  "Monday_Number_of_Representatives"
    t.integer  "Monday_Student_Level"
    t.integer  "Monday_Job_Type"
    t.integer  "Tuesday_Number_of_Representatives"
    t.integer  "Tuesday_Student_Level"
    t.integer  "Tuesday_Job_Type"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "companies", ["Name"], name: "index_companies_on_name", unique: true

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "UIN"
    t.string   "email"
    t.boolean  "US_citizen"
    t.string   "degree"
    t.string   "position_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "students", ["UIN"], name: "index_students_on_UIN", unique: true
  add_index "students", ["email"], name: "index_students_on_email", unique: true

end
