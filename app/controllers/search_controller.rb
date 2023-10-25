class SearchController < ApplicationController
  def index
    search_keyword = params[:q]
    @search_model = params[:model]
    @found_songs = Song.where("track_name LIKE ?", "%#{search_keyword}%")
    @found_albums = Album.where("name LIKE ?", "%#{search_keyword}%");
    @found_artists = Album.where("name LIKE ?", "%#{search_keyword}%");
  end
end
