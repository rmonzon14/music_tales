class RemoveYoutubeVideoFromSong < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :youtube_video, :integer
  end
end
