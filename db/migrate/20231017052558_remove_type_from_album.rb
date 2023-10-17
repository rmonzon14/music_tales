class RemoveTypeFromAlbum < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :type, :string
  end
end
