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

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to :root
  end

private
  def album_params
    params.require(:album).permit(:name, :image, :price, :artist, :release_date)
  end
end
