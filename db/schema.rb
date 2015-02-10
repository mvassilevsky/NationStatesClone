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

ActiveRecord::Schema.define(version: 20150206214200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issue_options", force: true do |t|
    t.integer  "issue_id",    null: false
    t.string   "body",        null: false
    t.integer  "ec_freedom",  null: false
    t.integer  "soc_freedom", null: false
    t.integer  "pol_freedom", null: false
    t.integer  "tax_rate",    null: false
    t.integer  "ecosystem",   null: false
    t.string   "result_txt",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issue_options", ["issue_id"], name: "index_issue_options_on_issue_id", using: :btree

  create_table "issues", force: true do |t|
    t.string   "title",      null: false
    t.string   "body",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nation_issues", force: true do |t|
    t.integer  "nation_id",  null: false
    t.integer  "issue_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nation_issues", ["issue_id"], name: "index_nation_issues_on_issue_id", using: :btree
  add_index "nation_issues", ["nation_id"], name: "index_nation_issues_on_nation_id", using: :btree

  create_table "nations", force: true do |t|
    t.string   "name",            null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.integer  "ec_freedom",      null: false
    t.integer  "soc_freedom",     null: false
    t.integer  "pol_freedom",     null: false
    t.string   "currency",        null: false
    t.string   "animal",          null: false
    t.integer  "population",      null: false
    t.string   "leader_title",    null: false
    t.string   "motto"
    t.string   "recent_issues"
    t.string   "flag_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tax_rate",        null: false
    t.integer  "ecosystem"
  end

end
