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

  def update #update a song by id
    def update
      @song = Song.find_by(id: params[:id])
      @song.update(
        title: params[:title] || @song.title,
        album: params[:album] || @song.album,
        artist: params[:artist] || @song.artist,
        year: params[:year] || @song.year,
      )
      render :show
    end
  end
end
