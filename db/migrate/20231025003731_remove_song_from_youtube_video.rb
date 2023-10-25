class RemoveSongFromYoutubeVideo < ActiveRecord::Migration[7.0]
  def change
    remove_column :youtube_videos, :song_id, :integer
  end
end
