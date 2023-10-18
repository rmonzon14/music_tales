class AddIsLicensedToYoutubeVideo < ActiveRecord::Migration[7.0]
  def change
    add_column :youtube_videos, :is_licensed, :boolean
  end
end
