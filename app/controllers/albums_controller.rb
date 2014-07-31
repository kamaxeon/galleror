class AlbumsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :edit, :new, :destroy]
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.published
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @photos = @album.photos
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)
    @album.user = current_user
    @album.save
    respond_with(@album, location: albums_url)
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    @album.update(album_params)
    respond_with(@album, location: albums_url)
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    respond_with(@album)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    def set_user
      @user = current_user
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :description, :public, :rating)
    end
end
