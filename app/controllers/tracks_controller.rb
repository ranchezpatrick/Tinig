class TracksController < ApplicationController
    before_action :set_track, only: [:show, :edit, :update, :destroy]

    def index
        @tracks = Track.all
    end

    def new 
        @track = Track.new
    end

    def show
        @track = Track.find(params[:id])
    end

    def edit
        @track = Track.find(params[:id])
    end

    def update
        @track = Track.find(params[:id])

        if @track.update(tracks_params)
        redirect_to tracks_path, notice: "Updated an Entry"
        else 
            flash[:error] = "Blank Field"
            render :edit
        end
    end

    def create 
        @track = Track.new(tracks_params)

        if @track.save
            redirect_to tracks_path
        else
            render :new
        end
    end

    def destroy
        @track.destroy
        redirect_to tracks_path, notice: "a Track was successfully destoyed"
      end

      private

      def set_track
          @track = Track.find(params[:id])
      end
  
      def tracks_params
          params.require(:track).permit(:name, :url, :credits, :available)
      end


end
