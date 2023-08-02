class SongsController < ApplicationController
  def index #shows all songs
    @songs = Song.all
    render :index
  end
end
