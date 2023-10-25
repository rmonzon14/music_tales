class AddForeignKeyToSongs < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :songs, :youtube_videos
  end
end
