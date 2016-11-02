class ReviewsController < ApplicationController

  before_action :set_restaurant

  def new
    @review = Review.new
    @rating = Review::RATING
  end

  def create
  @review = Review.new(review_params)
  @rating = Review::RATING
  @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      # show them the form again with all their data & an error message
      render "restaurants/show"
    end
  end


private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end



