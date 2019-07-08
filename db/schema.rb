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

ActiveRecord::Schema.define(version: 2019_07_07_121502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakfasts", force: :cascade do |t|
    t.string "hot_drinks"
    t.string "vegetarian_drink"
    t.string "chocolate_milk"
    t.string "bread"
    t.string "vegetarian_bread"
    t.string "margarine"
    t.string "vegetarian_margarine"
    t.string "complement"
    t.string "vegetarian_complement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "menu_id"
    t.string "fruit"
    t.index ["menu_id"], name: "index_breakfasts_on_menu_id"
  end

  create_table "customer_satisfactions", force: :cascade do |t|
    t.integer "user_group"
    t.string "meal"
    t.integer "rating"
    t.text "like"
    t.text "disgust"
    t.text "suggestion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinners", force: :cascade do |t|
    t.string "salad"
    t.string "sauce"
    t.string "soup"
    t.string "main_course"
    t.string "vegetarian_dish"
    t.string "accompaniments"
    t.string "dessert"
    t.string "juice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "menu_id"
    t.index ["menu_id"], name: "index_dinners_on_menu_id"
  end

  create_table "hora_de_funcionamentos", force: :cascade do |t|
    t.string "dia"
    t.string "inicio"
    t.string "fechamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.string "salad"
    t.string "sauce"
    t.string "main_course"
    t.string "garnish"
    t.string "vegetarian_dish"
    t.string "accompaniments"
    t.string "dessert"
    t.string "juice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "menu_id"
    t.index ["menu_id"], name: "index_lunches_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "working_hours", force: :cascade do |t|
    t.string "dia"
    t.string "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "breakfasts", "menus"
  add_foreign_key "dinners", "menus"
  add_foreign_key "lunches", "menus"
end
