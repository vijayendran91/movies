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

ActiveRecord::Schema[7.0].define(version: 2023_04_13_075543) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "nconst", null: false
    t.text "prof", default: [], array: true
    t.string "name", null: false
    t.string "yob"
    t.string "yod"
    t.text "top_titles", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nconst"], name: "index_actors_on_nconst"
  end

  create_table "crews", force: :cascade do |t|
    t.string "tconst"
    t.text "directors", array: true
    t.text "writers", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tconst"], name: "index_crews_on_tconst"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "tconst"
    t.float "avg_rating"
    t.integer "no_votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_ratings_on_id"
    t.index ["tconst"], name: "index_ratings_on_tconst"
  end

  create_table "titles", force: :cascade do |t|
    t.string "tconst"
    t.string "movie_type"
    t.string "ptitle"
    t.string "otitle"
    t.boolean "adult"
    t.string "syear"
    t.string "eyear"
    t.string "run_time"
    t.text "genres", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_titles_on_id"
    t.index ["tconst"], name: "index_titles_on_tconst"
  end

end
