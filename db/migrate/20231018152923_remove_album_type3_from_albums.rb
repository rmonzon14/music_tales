class RemoveAlbumType3FromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :album_type_id, :integer
  end
end
