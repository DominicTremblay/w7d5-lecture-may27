class ReviewsController < ApplicationController
  def create

    @movie = Movie.find(params[:movie_id])

    @review = @movie.reviews.new(review_params)
    if @review.save 
      # redirecting to the same movie show page
      redirect_to movie_path(@movie)
    else
      # provide the path to to show.html.erb from the movies folder
      # otherwise looking by default in reviews folder
      render 'movies/show'
    end

  end

  def destroy
    movie =  Movie.find(params[:movie_id])
    review = Review.find(params[:id])
    raise    
    if review.destroy
      redirect_to movie_path(movie), notice: 'review deleted'  
    else 
      redirect_to movie_path(movie), notice: 'review cannot be deleted'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
