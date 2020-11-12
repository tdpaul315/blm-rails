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

ActiveRecord::Schema.define(version: 2020_11_12_145556) do

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.integer "yr_started"
    t.text "description"
  end

  create_table "protests", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "date"
    t.integer "user_id", null: false
    t.integer "movement_id", null: false
    t.index ["movement_id"], name: "index_protests_on_movement_id"
    t.index ["user_id"], name: "index_protests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "username"
    t.boolean "admin"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "protests", "movements"
  add_foreign_key "protests", "users"
end
