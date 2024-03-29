class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :type
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
