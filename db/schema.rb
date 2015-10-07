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

ActiveRecord::Schema.define(version: 20151006203142) do

  create_table "checkins", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "points"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joined_factions", force: :cascade do |t|
    t.boolean  "isAdmin"
    t.integer  "user_id"
    t.integer  "faction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "joined_factions", ["faction_id"], name: "index_joined_factions_on_faction_id"
  add_index "joined_factions", ["user_id"], name: "index_joined_factions_on_user_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qpjoin_tables", force: :cascade do |t|
    t.integer  "quest_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "qpjoin_tables", ["place_id"], name: "index_qpjoin_tables_on_place_id"
  add_index "qpjoin_tables", ["quest_id"], name: "index_qpjoin_tables_on_quest_id"

  create_table "quests", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "user_name"
    t.string   "password"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
