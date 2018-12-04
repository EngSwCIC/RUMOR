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

ActiveRecord::Schema.define(version: 2018_11_21_160936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cardapios", force: :cascade do |t|
    t.text "data"
    t.text "campus"
    t.text "bebidas_quentes"
    t.text "bebida_vegetariana"
    t.text "achocolatado"
    t.text "pao"
    t.text "pao_vegetariano"
    t.text "complemento"
    t.text "complemento_vegetariano"
    t.text "frutas"
    t.text "almoco_salada"
    t.text "almoco_molho"
    t.text "almoco_prato_principal"
    t.text "guarnicao"
    t.text "almoco_prato_vegetariano"
    t.text "almoco_acompanhamentos"
    t.text "almoco_sobremesa"
    t.text "almoco_refresco"
    t.text "jantar_salada"
    t.text "jantar_molho"
    t.text "jantar_prato_principal"
    t.text "sopa"
    t.text "jantar_prato_vegetariano"
    t.text "jantar_acompanhamentos"
    t.text "jantar_sobremesa"
    t.text "jantar_refresco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.date "data"
    t.text "campus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
