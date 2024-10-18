class ReviewsController < ApplicationController
  # before_action :set_swap, only: %i[create index show]

  def index
    @reviews = review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to book_path(@book), notice: "Review was successfully created."
    else
      redirect_to book_path(@book), alert: "Review was not created."
    end
  end

  # def update
  #   @review = Review.find(params[:id])
  #   if @review.update(review_params)
  #     redirect_to swap_path(@review.swap), notice: 'Review updated.'
  #   else
  #     redirect_to swap_path(@review.swap), alert: 'Review not updated.'
  #   end
  # end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
