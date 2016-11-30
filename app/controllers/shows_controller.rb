class ShowsController < ApplicationController
    before_action :set_show, only: [:show, :update, :destroy]

    def set_show
        @show = Show.find(params[:id])
      end

    def show_params
        #  params.permit(:data)
        # params.fetch(:show, {}).permit(:title, :genre, :description, :coverart, :release_date, :episodes, :rss, :site, :voice_artist_string)
        params.require(:show).permit(:title, :genre, :description, :coverart, :release_date, :episodes, :rss, :site, :voice_artist_string)
    end

    # GET /shows
    # GET /shows.json
    def index
        @shows = Show.all

        render json: @shows
    end

    # GET /shows/1
    # GET /shows/1.json
    def show
        render json: @show
    end

    # POST /shows
    # POST /shows.json
    def create
        @show = Show.new(show_params)
        if @show.save
            render json: @show, status: :created # location: @show
        else
            render json: @show.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /shows/1
    # PATCH/PUT /shows/1.json
    def update
        @show = Show.find(params[:id])

        if @show.update(show_params)
            head :no_content
        else
            render json: @show.errors, status: :unprocessable_entity
        end
    end

    # DELETE /shows/1
    # DELETE /shows/1.json
    def destroy
        @show.destroy

        head :no_content
    end

    private
end