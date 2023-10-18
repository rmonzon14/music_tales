require "csv"

filename = Rails.root.join("db/Spotify_Youtube.csv")

csv_data = File.read(filename)

artist = CSV.parse(csv_data, headers: true, encoding: "utf-8");

Artist.delete_all
Album.delete_all

artist.each do |a|
    mt_artist = Artist.find_or_create_by(name: a["Artist"])

    unless mt_artist.valid?
        artist = Artist.create(    
            name: a["Artist"],
            url_spotify: a["Url_spotify"]
        )

        album_type = AlbumType.create(type: a["Album_type"])
        album = Album.create(name: a["Album"])
    end
end

puts Artist.count
puts AlbumType.count
puts Album.count