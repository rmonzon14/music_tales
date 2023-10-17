class RemoveColumnFromAlbum < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :album_id, :integer
  end
end
