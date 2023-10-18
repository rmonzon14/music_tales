class AddNotNullConsraintToAlbumAlbumType < ActiveRecord::Migration[7.0]
  def change
    change_column :albums, :album_type, :integer, :default => 0, null: false
  end
end
