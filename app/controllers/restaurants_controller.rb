class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]


def index
  @restaurants = Restaurant.all
end

def show
  @review = Review.new
  @rating = Review::RATING

end


def new
  @restaurant = Restaurant.new
  @category = Restaurant::CATEGORY
end



  def create        # POST /restaurants
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
