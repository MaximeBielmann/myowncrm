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

ActiveRecord::Schema.define(version: 20190326164649) do

  create_table "contacts", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.string "adress"
    t.string "facebook_profil"
    t.string "twitter_profil"
    t.string "linkedin_profil"
    t.string "instagram_profil"
    t.string "youtube_profil"
  end

  create_table "opportunities", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.string   "project"
    t.text     "content"
  end

  create_table "todolists", force: :cascade do |t|
    t.integer "opportunity_id"
    t.date    "end_date"
    t.text    "content"
    t.string  "status"
  end

end
