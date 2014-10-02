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

ActiveRecord::Schema.define(version: 20140927160611) do

  create_table "career_courses", force: true do |t|
    t.integer  "career_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "career_courses", ["career_id"], name: "index_career_courses_on_career_id", using: :btree
  add_index "career_courses", ["course_id"], name: "index_career_courses_on_course_id", using: :btree

  create_table "careers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_materials", force: true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_materials", ["course_id"], name: "index_course_materials_on_course_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_materials", force: true do |t|
    t.integer  "lesson_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lesson_materials", ["lesson_id"], name: "index_lesson_materials_on_lesson_id", using: :btree

  create_table "lessons", force: true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.string   "video"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["course_id"], name: "index_lessons_on_course_id", using: :btree

end
