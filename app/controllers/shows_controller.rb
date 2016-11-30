class ShowsController < ProtectedController
  before_action :set_show, only: [:show, :update, :destroy]

  # GET /shows
  # GET /shows.json
  def index
    @shows = Show.where("user_id=#{current_user.id}").reverse

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
    @show = current_user.shows.build(show_params)
    if @show.save
      render json: @show, status: :created, location: @show
    else
      render json: @show.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shows/1
  # PATCH/PUT /shows/1.json
  def update
    # @show = Show.find(params[:id])
    # render json: @show
    if @show.update(show_params)
      head :no_content
    else
      render json: @show.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shows/1
  # DELETE /shows/1.json
  def destroy
    if @show.destroy
      head :no_content
    else
      render json:  @show.errors, status: :unprocessable_entity
    end
  end

  private

  def set_show
    @show = current_user.shows.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:title, :genre, :description, :release_date, :episodes, :rss, :site, :voice_artist_string)
  end
end
