class ReviewsController < ApplicationController
  before_action :set_resto
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
    render "restaurants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_resto
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end


