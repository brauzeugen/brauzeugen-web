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

ActiveRecord::Schema.define(version: 2020_04_05_155630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brew_batches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.datetime "published_at"
    t.string "published_amount"
    t.string "serial_number", default: "BG??-??", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "voices", force: :cascade do |t|
    t.string "token", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "brew_batch_id", null: false
    t.index ["brew_batch_id"], name: "index_voices_on_brew_batch_id"
    t.index ["token"], name: "index_voices_on_token", unique: true
    t.index ["user_id"], name: "index_voices_on_user_id"
  end

  add_foreign_key "voices", "users"
end
