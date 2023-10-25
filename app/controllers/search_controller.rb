class SearchController < ApplicationController
  def index
    search_keyword = params[:q]
    @found_songs = Song.where("track_name LIKE ?", "%#{search_keyword}%")
    @found_albums = Album.where("name LIKE ?", "%#{search_keyword}%");
    @found_artists = Album.where("name LIKE ?", "%#{search_keyword}%");
  end

  def show

  end
end
