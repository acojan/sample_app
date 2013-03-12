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

ActiveRecord::Schema.define(:version => 20130311035906) do

  create_table "academic_records", :force => true do |t|
    t.string   "level"
    t.string   "school"
    t.string   "periodAttended"
    t.string   "degree"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "alumnis", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "availabilities", :force => true do |t|
    t.string   "day"
    t.datetime "startTime"
    t.datetime "endTime"
    t.string   "location"
    t.string   "counselor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "children", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "counselor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "clients", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clusters", :force => true do |t|
    t.string   "clusterId"
    t.string   "clusterName"
    t.string   "clusterInvolvement"
    t.string   "possibleInvolvement"
    t.string   "counselor_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "counselees", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "counseling_experiences", :force => true do |t|
    t.string   "courseName"
    t.string   "conductedBy"
    t.string   "counselor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "counseling_sessions", :force => true do |t|
    t.datetime "startTime"
    t.datetime "endTime"
    t.string   "location"
    t.string   "counselorName"
    t.string   "counseleeName"
    t.string   "counselor_id"
    t.string   "counselee_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "counselors", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "growth_groups", :force => true do |t|
    t.string   "groupId"
    t.string   "facilitator"
    t.integer  "year"
    t.string   "student_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "individuals", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medications", :force => true do |t|
    t.string   "medicationName"
    t.string   "dosage"
    t.string   "counselee_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "organizations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "others", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "occupation"
    t.string   "relation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "counselee_id"
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
    t.boolean  "isCounselee",               :default => false
    t.boolean  "isCounselor",               :default => false
    t.integer  "age"
  end

  create_table "problems", :force => true do |t|
    t.boolean  "premarital"
    t.boolean  "marriage"
    t.boolean  "family"
    t.boolean  "parentChild"
    t.boolean  "child"
    t.boolean  "personal"
    t.text     "others"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "counselee_id"
  end

  create_table "programs", :force => true do |t|
    t.string   "programId"
    t.string   "programName"
    t.integer  "startYear"
    t.integer  "endYear"
    t.string   "student_id"
    t.string   "alumni_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "serviceId"
    t.string   "serviceName"
    t.string   "serviceNature"
    t.integer  "hours"
    t.integer  "year"
    t.string   "staff_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "individual_id"
    t.string   "organization_id"
  end

  create_table "skills", :force => true do |t|
    t.boolean  "teaching"
    t.boolean  "facilitation"
    t.boolean  "events"
    t.boolean  "administration"
    t.boolean  "fundRaising"
    t.boolean  "courseDev"
    t.boolean  "projects"
    t.boolean  "presentations"
    t.boolean  "workshops"
    t.text     "others"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "counselor_id"
  end

  create_table "spouses", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "education"
    t.string   "religion"
    t.string   "email"
    t.string   "landline"
    t.string   "mobile"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "counselee_id"
  end

  create_table "staffs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subject_infos", :force => true do |t|
    t.string   "subjectId"
    t.string   "subjectName"
    t.string   "grade"
    t.string   "student_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "work_experiences", :force => true do |t|
    t.string   "previousWork"
    t.string   "positionHeld"
    t.string   "counselor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
