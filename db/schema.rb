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

ActiveRecord::Schema.define(version: 2018_11_22_001543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "menu_reviews", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "tipo_usuario"
    t.string "refeicao"
    t.string "categoria"
    t.integer "nota"
    t.text "consideracao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ru_reviews", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "tipo_usuario"
    t.integer "nota_limpeza_restaurante"
    t.integer "nota_limpeza_banheiro"
    t.integer "nota_caixa"
    t.integer "nota_porta_objetos"
    t.text "consideracao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
