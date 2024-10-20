class GenresController < ApplicationController
  def index
  end

  def new
    @genre = Genre.new
  end

  def create
    genre_params = params.require(:genre).permit(:name)
    @genre = Genre.new(genre_params)

    if @genre.save()
      redirect_to genres_path, notice: "Genre successfully created!"
    else
      flash.now[:notice] = "Genre not created!"
      render "new"
    end
  end
end
