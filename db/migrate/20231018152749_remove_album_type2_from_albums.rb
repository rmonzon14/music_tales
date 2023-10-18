class RemoveAlbumType2FromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :album_type, :integer
  end
end
