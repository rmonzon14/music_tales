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

ActiveRecord::Schema[7.0].define(version: 2023_10_18_230952) do
  create_table "album_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "artist_id", null: false
    t.integer "album_type_id"
    t.index ["album_type_id"], name: "index_albums_on_album_type_id"
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "url_spotify"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "track_name"
    t.decimal "duration_ms"
    t.decimal "tempo"
    t.decimal "liveness"
    t.decimal "valence"
    t.decimal "instrumentalness"
    t.decimal "accousticness"
    t.decimal "speechiness"
    t.decimal "loudness"
    t.decimal "energy"
    t.decimal "key"
    t.decimal "danceability"
    t.string "uri"
    t.integer "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
  end

  create_table "youtube_videos", force: :cascade do |t|
    t.string "title"
    t.decimal "likes"
    t.decimal "comments"
    t.decimal "views"
    t.string "url"
    t.integer "stream"
    t.boolean "is_official_video"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "channel_id", null: false
    t.integer "song_id", null: false
    t.boolean "is_licensed"
    t.index ["channel_id"], name: "index_youtube_videos_on_channel_id"
    t.index ["song_id"], name: "index_youtube_videos_on_song_id"
  end

  add_foreign_key "albums", "album_types"
  add_foreign_key "albums", "artists"
  add_foreign_key "songs", "albums"
  add_foreign_key "youtube_videos", "channels"
  add_foreign_key "youtube_videos", "songs"
end
