class RemoveYoutubeVideoIdFromSong < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :youtube_video_id, :integer
  end
end
