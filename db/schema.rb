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

ActiveRecord::Schema.define(version: 2020_03_03_232732) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_artists_on_genre_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_favorites_on_genre_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
  end

end
