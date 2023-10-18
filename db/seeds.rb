require "csv"

filename = Rails.root.join("db/Spotify_Youtube.csv")

csv_data = File.read(filename)

mt = CSV.parse(csv_data, headers: true, encoding: "utf-8");

Album.destroy_all
Artist.destroy_all
AlbumType.destroy_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='artists';")

mt.each do |a|
    artist = Artist.find_or_create_by(    
        name: a["Artist"],
        url_spotify: a["Url_spotify"]
    )

    album_type = AlbumType.find_or_create_by(
        name: a["Album_type"]
    )

    album = Album.create(
        name: a["Album"],
        artist: artist,
        album_type: album_type
    )
end

puts Artist.count
puts AlbumType.count
puts Album.count