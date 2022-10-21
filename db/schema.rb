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

ActiveRecord::Schema.define(version: 2022_10_21_113135) do

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.string "author"
    t.integer "paper_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["paper_id"], name: "index_comments_on_paper_id"
  end

  create_table "conference_subthemes", force: :cascade do |t|
    t.string "name"
    t.integer "conference_theme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conference_theme_id"], name: "index_conference_subthemes_on_conference_theme_id"
  end

  create_table "conference_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "papers", force: :cascade do |t|
    t.string "title"
    t.integer "conference_theme_id", null: false
    t.integer "conference_subtheme_id", null: false
    t.text "content"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conference_subtheme_id"], name: "index_papers_on_conference_subtheme_id"
    t.index ["conference_theme_id"], name: "index_papers_on_conference_theme_id"
  end

  add_foreign_key "comments", "papers"
  add_foreign_key "conference_subthemes", "conference_themes"
  add_foreign_key "papers", "conference_subthemes"
  add_foreign_key "papers", "conference_themes"
end
