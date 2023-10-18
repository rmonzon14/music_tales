class AddSongIdToYoutubeVideo < ActiveRecord::Migration[7.0]
  def change
    add_reference :youtube_videos, :song, null: true, foreign_key: true
  end
end
