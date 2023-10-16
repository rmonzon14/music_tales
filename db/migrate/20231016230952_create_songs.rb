class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :track_name
      t.decimal :duration_ms
      t.decimal :tempo
      t.decimal :liveness
      t.decimal :valence
      t.decimal :instrumentalness
      t.decimal :accousticness
      t.decimal :speechiness
      t.decimal :loudness
      t.decimal :energy
      t.decimal :key
      t.decimal :danceability
      t.string :uri
      t.references :album, null: false, foreign_key: true
      t.references :youtube_video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
