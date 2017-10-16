class SongsController < ApplicationController
  before_action :set_song, only: [:show]

  def index
    @songs = Song.all
  end

  def show
    @song.artist = @artist.song
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
 end

  def create
    @artist = Artist.find(params[:artist_id])

    @song = @artist.songs.build(song_params)


    if @song.save
      redirect_to artist_path(@artist), notice: "Song created"
    else
      render :new
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.destroy
    redirect_to @song.artist, notice: "Song deleted"
  end
end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
