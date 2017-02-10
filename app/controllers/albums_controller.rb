class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    if @album.save
      redirect_to :root
    else
      render :new
    end
  end

private
  def album_params
    params.require(:album).permit(:name, :price, :artist, :release_date)
  end
end
