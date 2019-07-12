class ReviewsController < ApplicationController
  def edit
    review = Review.find(params[:id])

  end

  def create
    
    @movie = Movie.find(params[:movie_id])
    @movie.reviews.new(review_params)
    
    if @movie.save
      redirect_to @movie
    else
      @review = Review.new
      # @review.errors.add(@movie.errors.full_messages)
      @reviews = @movie.reviews.order(created_at: :desc)
      render '/movies/show'
    end
  end

  def destroy
    review = Review.find(params[:id])
    movie = Movie.find(params[:movie_id])
    review.destroy
    redirect_to movie    
  end


  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
