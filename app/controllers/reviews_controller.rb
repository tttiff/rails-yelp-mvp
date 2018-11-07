class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new()
    @review.restaurant_id = @restaurant.id
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
