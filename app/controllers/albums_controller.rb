class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    if @album.save
      flash.now[:notice] = "Album listing successfully added!"
      redirect_to album_path(@album)
    else
      flash.now[:notice] = "Please fill in your listing"
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      flash.now[:notice] = "Album listing successfully added!"
      redirect_to :root
    else
      flash.now[:notice] = "Please fill in your listing"
      render :edit
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
