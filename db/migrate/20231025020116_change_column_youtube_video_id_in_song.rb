class ChangeColumnYoutubeVideoIdInSong < ActiveRecord::Migration[7.0]
  def change
    change_column :songs, :youtube_video, :integer, :default => 0, :null => false
  end
end
