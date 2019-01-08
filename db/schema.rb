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

ActiveRecord::Schema.define(version: 2019_01_08_173920) do

  create_table "cohorts", force: :cascade do |t|
    t.string "cohort_name"
    t.string "start_date"
    t.string "end_date"
    t.integer "instructor_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_cohorts_on_course_id"
    t.index ["instructor_id"], name: "index_cohorts_on_instructor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "hours"
    t.integer "section"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birthday"
    t.integer "salary"
    t.string "education"
    t.string "email"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birthday"
    t.string "education"
    t.string "email"
    t.integer "cohort_id"
    t.index ["cohort_id"], name: "index_students_on_cohort_id"
  end

end
