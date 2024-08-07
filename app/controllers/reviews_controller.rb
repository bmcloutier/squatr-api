class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find_by(id: params[:id])
    render :show
  end

  def create
    @review = Review.create(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    render :show
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(
      reservation_id: params[:reservation_id] || @review.reservation_id,
      rating: params[:rating] || @review.rating,
      comment: params[:comment] || @review.comment,
    )
    render :show
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    render json: { message: "The review has been destroyed!" }
  end
end
