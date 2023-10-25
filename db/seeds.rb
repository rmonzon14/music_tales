require "csv"


Song.destroy_all
YoutubeVideo.destroy_all
Album.destroy_all
Artist.destroy_all
AlbumType.destroy_all
Channel.destroy_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='artists';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='albums';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='channels';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='songs';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='youtube_videos';")

filename = Rails.root.join("db/spotify_youtube.csv")

csv_data = File.read(filename)

mt = CSV.parse(csv_data, headers: true, encoding: "utf-8");

mt.each do |a|
    artist = Artist.find_or_create_by(
        name: a["Artist"],
        url_spotify: a["Url_spotify"]
    )

    album_type = AlbumType.find_or_create_by(
        name: a["Album_type"]
    )

    album = Album.find_or_create_by(
        name: a["Album"],
        artist: artist,
        album_type: album_type
    )

    channel = Channel.find_or_create_by(
        name: a["Channel"]
    )

    youtube_video = YoutubeVideo.find_or_create_by(
        title: a["Title"],
        likes: a["Likes"],
        comments: a["Comments"],
        views: a["Views"],
        url: a["Url_youtube"],
        is_licensed: a["Licensed"],
        stream: a["Stream"],
        is_official_video: a["official_video"],
        description: a["Description"],
        channel: channel
    )

    song = Song.find_or_create_by(
        track_name: a["Track"],
        duration_ms: a["Duration_ms"],
        tempo: a["Tempo"],
        liveness: a["Liveness"],
        valence: a["Valence"],
        instrumentalness: a["Instrumentalness"],
        accousticness: a["Acousticness"],
        speechiness: a["Speechiness"],
        loudness: a["Loudness"],
        energy: a["Energy"],
        key: a["Key"],
        danceability: a["Danceability"],
        uri: a["Url_youtube"],
        album: album,
        youtube_video: youtube_video
    )
end

puts Artist.count
puts AlbumType.count
puts Album.count
puts Song.count
puts YoutubeVideo.count
puts Channel.count