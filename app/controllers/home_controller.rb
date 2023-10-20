class HomeController < ApplicationController
  def index
    @albums = Album.limit(10).order(name: :asc)

    @artists = Artist.limit(10).order(name: :asc)

    @songs = Song.limit(10).order(track_name: :asc)
  end
end
