# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_09_173932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: :cascade do |t|
    t.integer "met_id"
    t.string "img_url"
    t.string "title"
    t.string "culture"
    t.string "artist"
    t.string "date"
    t.string "description"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "schedule_id", null: false
    t.boolean "sent"
    t.datetime "send_date_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_emails_on_artwork_id"
    t.index ["schedule_id"], name: "index_emails_on_schedule_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "artwork_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_favorites_on_artwork_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "department"
    t.boolean "highlight"
    t.string "dates"
    t.integer "days"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "f_name"
    t.string "l_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "emails", "artworks"
  add_foreign_key "emails", "schedules"
  add_foreign_key "favorites", "artworks"
  add_foreign_key "favorites", "users"
  add_foreign_key "schedules", "users"
end
