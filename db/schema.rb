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

ActiveRecord::Schema.define(version: 2021_08_17_073210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "convos", force: :cascade do |t|
    t.bigint "seller_id", null: false
    t.bigint "buyer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_convos_on_buyer_id"
    t.index ["seller_id"], name: "index_convos_on_seller_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "users_id", null: false
    t.bigint "convos_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["convos_id"], name: "index_messages_on_convos_id"
    t.index ["users_id"], name: "index_messages_on_users_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "seller_id", null: false
    t.text "review"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["seller_id"], name: "index_reviews_on_seller_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "gender"
    t.integer "age"
    t.integer "price"
    t.string "location"
    t.boolean "smoker"
    t.boolean "drinker"
    t.boolean "vaccinated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "bio"
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.bigint "seller_id"
    t.bigint "buyer_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "convos", "users", column: "buyer_id"
  add_foreign_key "convos", "users", column: "seller_id"
  add_foreign_key "messages", "convos", column: "convos_id"
  add_foreign_key "messages", "users", column: "users_id"
  add_foreign_key "reviews", "sellers"
  add_foreign_key "reviews", "users"
  add_foreign_key "sellers", "users"
end
