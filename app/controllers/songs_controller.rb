class SongsController < ApplicationController
  def index #shows all songs
    @songs = Song.all
    render :index
  end

  def create #enter a new song
    @song = Song.create(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    render :show
  end

  def show #shows a song by id
    @song = Song.find_by(id: params[:id])
    render :show
  end
end
