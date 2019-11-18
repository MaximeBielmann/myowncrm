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

ActiveRecord::Schema.define(version: 20191115141949) do

  create_table "contacts", force: :cascade do |t|
    t.string  "last_name"
    t.string  "first_name"
    t.string  "email"
    t.string  "phone"
    t.string  "adress"
    t.string  "facebook_profil"
    t.string  "twitter_profil"
    t.string  "linkedin_profil"
    t.string  "instagram_profil"
    t.string  "youtube_profil"
    t.integer "user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.datetime "note_date"
    t.string   "note_title"
    t.text     "note_content"
    t.integer  "opportunity_id"
    t.integer  "user_id"
  end

  create_table "opportunities", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.string   "project"
    t.text     "content"
    t.integer  "user_id"
  end

  create_table "todolists", force: :cascade do |t|
    t.integer "opportunity_id"
    t.date    "end_date"
    t.text    "content"
    t.string  "status"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
