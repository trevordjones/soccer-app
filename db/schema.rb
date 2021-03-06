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

ActiveRecord::Schema.define(version: 20140901005809) do

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "leagues", force: true do |t|
    t.string   "league"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "photo_url"
    t.integer  "espn_league_id"
    t.string   "espn_shortname"
    t.integer  "football_api_comp_id"
    t.string   "sbnation_url"
    t.string   "twitter_handle"
    t.string   "goal_url_id"
    t.string   "league_feed"
  end

  create_table "leagues_users", id: false, force: true do |t|
    t.integer "league_id"
    t.integer "user_id"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "nationality"
    t.date     "dob"
    t.string   "position"
    t.string   "number"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.string   "head_shot"
  end

  create_table "players_users", id: false, force: true do |t|
    t.integer "player_id"
    t.integer "user_id"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "guardian"
    t.string   "manager"
    t.string   "slug"
    t.string   "nickname"
    t.string   "stadium"
    t.string   "homepage"
    t.string   "location"
    t.string   "abbr"
    t.string   "established"
    t.integer  "rank"
    t.string   "photo_url"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "uefa"
    t.integer  "espn_team_id"
    t.string   "espn_team_name"
    t.integer  "football_api_team_id"
    t.string   "twitter_handle"
    t.string   "football_UK"
    t.string   "football_fix_team_name"
  end

  create_table "teams_users", id: false, force: true do |t|
    t.integer "team_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
