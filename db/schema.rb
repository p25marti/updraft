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

ActiveRecord::Schema[7.0].define(version: 2023_03_17_222438) do
  create_table "cards", force: :cascade do |t|
    t.string "scryfall_id"
    t.string "name"
    t.string "oracle_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "oracle_id"
    t.string "set"
    t.string "set_id"
    t.string "scryfall_uri"
    t.decimal "cmc"
    t.string "color_identity"
    t.string "colors"
    t.string "layout"
    t.string "mana_cost"
    t.string "type_line"
    t.string "power"
    t.string "toughness"
    t.string "rarity"
    t.boolean "reprint"
  end

  create_table "set_releases", id: false, force: :cascade do |t|
    t.string "id"
    t.string "code"
    t.string "name"
    t.string "set_type"
    t.date "released_at"
    t.integer "card_count"
    t.string "icon_svg_uri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
