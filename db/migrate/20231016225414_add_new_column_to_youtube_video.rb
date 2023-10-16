class AddNewColumnToYoutubeVideo < ActiveRecord::Migration[7.0]
  def change
    add_reference :youtube_videos, :channel, null: false, foreign_key: true
  end
end
