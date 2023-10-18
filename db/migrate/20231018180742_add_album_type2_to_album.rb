class AddAlbumType2ToAlbum < ActiveRecord::Migration[7.0]
  def change
    add_reference :albums, :album_type, null: true, foreign_key: true
  end
end
