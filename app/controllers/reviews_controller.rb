class ReviewsController < ApplicationController
  def edit
    review = Review.find(params[:id])

  end

  def create
    review = Review.new(review_params)
    # if review.save
    #   redirect_to  
    # else
    #   render :new
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
