class RenameAlbumTypeColumnInAlbumType < ActiveRecord::Migration[7.0]
  def change
    rename_column :album_types, :album_type, :name
  end
end
