class AddAlbumTypeeeeToAlbums < ActiveRecord::Migration[7.0]
  def change
    add_reference :albums, :album_type, null: false, foreign_key: true
  end
end
