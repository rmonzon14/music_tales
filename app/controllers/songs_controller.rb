class SongsController < ApplicationController
  def index
    @songs = Song.order(:track_name).page params[:page]
  end

  def show
    @song = Song.find(params[:id])
  end
end
