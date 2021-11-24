class AlbumsController < ApplicationController
    before_action :set_album, only: [:show, :edit, :update, :destroy]

    def index
        @albums = Album.all
    end

    def new 
        @album = Album.new
    end

    def create 
        @album = Album.new(albums_params)

        if @album.save
            redirect_to albums_path
        else
            render :new
        end
    end

    def edit
    end

    def show
    end

    def update

        if @album.update(albums_params)
            redirect_to albums_path, notice: "Updated and Entry"
        else
            flash[:error] = "Blank Field"
            render :edit
        end
    end

    def destroy
        @album.destroy
        redirect_to albums_path, notice: "an Album was destroyed"
    end

    private

    def set_album
        @album = Album.find(params[:id])
    end

    def albums_params
        params.require(:album).permit(:name, :released, :released_at, :length, :cover_art_url, :kind)
    end
end
