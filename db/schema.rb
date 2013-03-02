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

ActiveRecord::Schema.define(:version => 20130224035826) do

  create_table "alumnis", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "counselees", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "counselors", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "individuals", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "organizations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "province"
    t.string   "email"
    t.string   "landline"
    t.string   "mobile"
    t.string   "type"
    t.string   "affiliation"
    t.datetime "birthday"
    t.string   "sex"
    t.string   "occupation"
    t.string   "education"
    t.string   "religion"
    t.string   "problems"
    t.string   "previousCounseling_name"
    t.datetime "previousCounseling_when"
    t.string   "previousCounseling_where"
    t.string   "previousCounseling_result"
    t.datetime "last_checkup_date"
    t.datetime "marriage_date"
    t.string   "marriage_status"
    t.string   "contact_person"
    t.string   "org_nature"
    t.string   "officials_name"
    t.string   "officials_designation"
    t.string   "otherSkills"
    t.string   "cSpouse_name"
    t.string   "cSpouse_religion"
    t.string   "cSpouse_workaffil"
    t.boolean  "isCounselee",               :default => false
    t.boolean  "isCounselor",               :default => false
  end

  create_table "staffs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "permission"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.boolean  "admin",           :default => true
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
