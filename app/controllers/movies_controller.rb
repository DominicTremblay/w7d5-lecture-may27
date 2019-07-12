class MoviesController < ApplicationController
  def index
    @movies = Movie.order(created_at: :desc)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save

      redirect_to movies_path 

    end

  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    @reviews = @movie.reviews.order(created_at: :desc)
  end

  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title,
      :image_url,
      :director,
      :description,
      :release_date,
      :runtime
    )
  end
end
