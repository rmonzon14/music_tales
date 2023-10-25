class AddYoutubeVideoToSong < ActiveRecord::Migration[7.0]
  def change
    add_reference :songs, :youtube_video, foreign_key: true
  end
end
