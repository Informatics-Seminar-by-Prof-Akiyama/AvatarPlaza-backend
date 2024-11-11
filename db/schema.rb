# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_11_11_061509) do
  create_table "avatars", primary_key: "avatar_id", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "body", default: 0
    t.integer "accessory", default: 0
    t.boolean "logged_in", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment", default: ""
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "student_id", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.bigint "avatar_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avatar_id"], name: "fk_rails_6527170f4d"
  end

  add_foreign_key "users", "avatars", primary_key: "avatar_id"
end
