require "csv"

filename = Rails.root.join("db/Spotify_Youtube.csv")

csv_data = File.read(filename)

artist = CSV.parse(csv_data, headers: true, encoding: "utf-8");

Album.destroy_all
Artist.destroy_all
AlbumType.destroy_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='artists';")

artist.each do |a|
    mt_artist = Artist.find_or_create_by(name: a["Artist"])

    unless mt_artist.valid?
        artist = Artist.create(name: a["Artist"], url_spotify: a["Url_spotify"])
        album_type = AlbumType.create(name: a["Album_type"])
        artist.albums.create(name: a["Album"])
    end
end

puts Artist.count
puts AlbumType.count
puts Album.count