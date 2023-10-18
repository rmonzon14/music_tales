class RemoveAlbumTypeFromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :album_type__id, :integer
  end
end
