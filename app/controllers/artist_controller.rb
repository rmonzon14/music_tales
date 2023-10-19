class ArtistController < ApplicationController
  def index
    @artist = Artist.all
  end

  def show
  end
end
