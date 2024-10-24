class DirectorsController < ApplicationController
  before_action :set_director, only: %i[ show edit update destroy ]

  # GET /directors
  def index
    @directors = Director.all
  end

  # GET /directors/1
  def show
    @movies = Movie.where(params[:id])
  end

  # GET /directors/new
  def new
    @genres = Genre.all
    @director = Director.new
  end

  # GET /directors/1/edit
  def edit
  end

  # POST /directors
  def create
    @director = Director.new(director_params)

    if @director.save
      redirect_to @director, notice: "Director was successfully created."
    else
      @genres = Genre.all
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /directors/1
  def update
    if @director.update(director_params)
      redirect_to @director, notice: "Director was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /directors/1
  def destroy
    @director.destroy!
    redirect_to directors_url, notice: "Director was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director
      @director = Director.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def director_params
      params.require(:director).permit(:name, :nationality, :birthdate, :genre_id)
    end
end
