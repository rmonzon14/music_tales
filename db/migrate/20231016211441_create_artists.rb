class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :url_spotify

      t.timestamps
    end
  end
end
