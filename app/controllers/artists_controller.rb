class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update, :destroy]

    def index
        @artists = Artist.all
    end

    def new 
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artists_params)

        if @artist.save
            redirect_to artists_path
        else
            render :new
        end

    end

    def show
    end

    def edit
    end
    
    def update
        if @artist.update(artists_params)
        redirect_to artists_path, notice: "Updated an Entry"
        else
            flash[:error] = "Blank field"
            render :edit
        end
    end
    
    def destroy
        @artist.destroy
        redirect_to artists_path, notice: "an Artist was successfully destoyed"
      end

    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artists_params
        params.require(:artist).permit(:name, :permalink, :bio, :formed_at, :verified, :verified_at, :avatr_url, :cover_photo_url)
    end

end
