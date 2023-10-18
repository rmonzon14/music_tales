class RemoveArtistIFromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :artist_id, :integer
  end
end
