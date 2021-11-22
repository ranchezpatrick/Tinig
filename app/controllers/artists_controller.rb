class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update, :destroy]

    def index
        @artists = Artist.all
    end

    def new 
        @artist = Artist.new
    end

    def show
        @artists = Artist.find(params[:id])
    end

    def edit
        @artists = Artist.find(params[:id])
    end
    
    def update
        @artists = Artist.find(params[:id])
        if @artists.update(artists_params)
        redirect_to artists_path, notice: "Updated an Entry"
        else
            flash[:error] = "Blank field"
            render :edit
        end
    end
    
    def new 
        @artists = Artist.new
    end

    def create
        @artists = Artist.new(artists_params)

        if @artists.save
            redirect_to @artists
        else
            render :new
        end
    end

    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artists_params
        params.require(:artist).permit(:name, :permalink, :bio, :formed_at, :verified, :verified_at, :avatr_url, :cover_photo_url)
    end

end
