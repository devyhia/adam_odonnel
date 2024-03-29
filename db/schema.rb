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

ActiveRecord::Schema.define(version: 20141020041817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "what"
    t.text     "what_more"
    t.string   "image"
    t.datetime "when"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_items", force: true do |t|
    t.string   "name"
    t.integer  "tag"
    t.string   "placeholder"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data"
  end

  create_table "form_responses", force: true do |t|
    t.integer  "page_id"
    t.text     "json"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birthdate"
    t.integer  "zip"
    t.string   "country"
    t.boolean  "has_mortgage_news"
    t.boolean  "has_interest_rate_updates"
    t.boolean  "has_special_events"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_templates", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.integer  "page_type"
  end

  create_table "realtors", force: true do |t|
    t.string   "image"
    t.string   "title"
    t.string   "more"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
