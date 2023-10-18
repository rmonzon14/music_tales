class RemoveIsLicensedInYoutubeVideo < ActiveRecord::Migration[7.0]
  def change
    remove_column :youtube_videos, :is_licensed, :string
  end
end
