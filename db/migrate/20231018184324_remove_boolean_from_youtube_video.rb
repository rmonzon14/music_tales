class RemoveBooleanFromYoutubeVideo < ActiveRecord::Migration[7.0]
  def change
    remove_column :youtube_videos, :boolean, :string
  end
end
