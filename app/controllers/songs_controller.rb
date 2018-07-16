class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    if @artist.songs.create(song_params)
      redirect_to "/songs"
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :play_count, :length, :artist_id)
  end
end
