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

ActiveRecord::Schema.define(version: 20150407184139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.datetime "date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "presentation_id"
    t.integer  "venue_id"
  end

  add_index "events", ["presentation_id"], name: "index_events_on_presentation_id", using: :btree
  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "podcasts", force: true do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presentations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "speaker_id"
    t.integer  "video_id"
    t.integer  "podcast_id"
  end

  add_index "presentations", ["podcast_id"], name: "index_presentations_on_podcast_id", using: :btree
  add_index "presentations", ["speaker_id"], name: "index_presentations_on_speaker_id", using: :btree
  add_index "presentations", ["video_id"], name: "index_presentations_on_video_id", using: :btree

  create_table "presenters", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "photo"
    t.string   "website"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "instagram"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "name"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "instagram"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
