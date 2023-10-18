class RenameTypeColumnInAlbumType < ActiveRecord::Migration[7.0]
  def change
    rename_column :album_types, :type, :album_type
  end
end
