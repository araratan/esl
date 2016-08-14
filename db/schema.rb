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

ActiveRecord::Schema.define(version: 20160814100214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.time     "schedule_time"
    t.integer  "member_id"
    t.integer  "schedule_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "lessons", ["member_id"], name: "index_lessons_on_member_id", using: :btree
  add_index "lessons", ["schedule_id"], name: "index_lessons_on_schedule_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["user_id"], name: "index_members_on_user_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.datetime "schedule_date"
    t.integer  "teacher_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "schedules", ["teacher_id"], name: "index_schedules_on_teacher_id", using: :btree

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "lesson_item_per_day"
    t.integer  "member_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "subscriptions", ["member_id"], name: "index_subscriptions_on_member_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.time     "from_time"
    t.time     "to_time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "lessons", "members"
  add_foreign_key "lessons", "schedules"
  add_foreign_key "members", "users"
  add_foreign_key "schedules", "teachers"
  add_foreign_key "subscriptions", "members"
  add_foreign_key "teachers", "users"
end
