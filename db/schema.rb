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

ActiveRecord::Schema.define(version: 20160608174249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "team_id"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "source"
  end

  add_index "articles", ["league_id"], name: "index_articles_on_league_id", using: :btree
  add_index "articles", ["team_id"], name: "index_articles_on_team_id", using: :btree

  create_table "leagues", force: :cascade do |t|
    t.string   "league_name"
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "logo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "mlb_boxscores", force: :cascade do |t|
    t.string   "home_team_id"
    t.string   "away_team_id"
    t.integer  "home_hits"
    t.integer  "home_runs"
    t.integer  "home_errors"
    t.integer  "away_hits"
    t.integer  "away_runs"
    t.integer  "away_errors"
    t.string   "winning_pitcher"
    t.string   "winning_pitcher_record"
    t.string   "losing_pitcher"
    t.string   "losing_pitcher_record"
    t.string   "save_pitcher"
    t.string   "save_pitcher_save_count"
    t.string   "total_innings"
    t.string   "duration"
    t.date     "game_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "nba_boxscores", force: :cascade do |t|
    t.string   "home_team_id"
    t.string   "away_team_id"
    t.integer  "home_team_score"
    t.integer  "away_team_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "nfl_boxscores", force: :cascade do |t|
    t.string   "home_team_id"
    t.string   "away_team_id"
    t.integer  "home_team_score"
    t.integer  "away_team_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "nhl_boxscores", force: :cascade do |t|
    t.string   "home_team_id"
    t.string   "away_team_id"
    t.integer  "home_team_score"
    t.integer  "away_team_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "abbreviation"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "logo"
    t.integer  "league_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_leagues", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_teams", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                                                                                                           null: false
    t.string   "name"
    t.string   "avatar",                 default: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7-xPcyaHXdgXwYQ4ST76XqR02iYtclqjfGUXcN6NSmjgZbDsCRA"
    t.datetime "created_at",                                                                                                                                    null: false
    t.datetime "updated_at",                                                                                                                                    null: false
    t.string   "encrypted_password",     default: "",                                                                                                           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                                                                                                            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "articles", "leagues"
  add_foreign_key "articles", "teams"
end
