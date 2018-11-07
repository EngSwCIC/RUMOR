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

ActiveRecord::Schema.define(version: 2018_11_07_164006) do

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
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
