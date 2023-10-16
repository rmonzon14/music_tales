class CreateYoutubeVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :youtube_videos do |t|
      t.string :title
      t.decimal :likes
      t.decimal :comments
      t.decimal :views
      t.string :url
      t.string :is_licensed
      t.string :boolean
      t.integer :stream
      t.boolean :is_official_video
      t.text :description

      t.timestamps
    end
  end
end
