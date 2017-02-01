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

ActiveRecord::Schema.define(version: 20170131203050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "alumni_goaltenders", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "gp"
    t.integer  "wins"
    t.integer  "loses"
    t.integer  "otl"
    t.float    "winpercent"
    t.integer  "ga"
    t.float    "gaa"
    t.integer  "shutouts"
    t.integer  "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alumni_skaters", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "position"
    t.integer  "gp"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "points"
    t.integer  "pim"
    t.integer  "seasons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goaltenders", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "gp"
    t.integer  "wins"
    t.integer  "loses"
    t.integer  "otl"
    t.float    "winpercent"
    t.integer  "ga"
    t.float    "gaa"
    t.integer  "shutouts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "team1"
    t.string   "score"
    t.string   "team2"
    t.string   "date"
    t.string   "time"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skaters", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "points"
    t.integer  "pim"
    t.string   "pos"
    t.integer  "gp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_records", force: :cascade do |t|
    t.text     "season"
    t.text     "season_record"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "active_season"
  end

  create_table "upcoming_games", force: :cascade do |t|
    t.string   "team1"
    t.string   "team2"
    t.string   "date"
    t.string   "time"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
