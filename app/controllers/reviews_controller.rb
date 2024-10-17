class ReviewsController < ApplicationController
  before_action :set_swap, only: [:create, :index, :show]

  def index
    @reviews = review.all
    @reviews = @swap.reviews.includes(:user)
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    if params[:book_id]
      @book = Book.find(params[:book_id])
      @review = @book.reviews.new(review_params)
      @review.user = current_user

      if @review.save
        redirect_to @book, notice: "Review was successfully created."
      else
        redirect_to @book, alert: "There was an error creating your book review."
      end
    elsif params[:swap_id]
      @swap = Swap.find(params[:swap_id])
      if @swap.confirmed?
        @review = @swap.reviews.new(review_params)
        @review.user = current_user

        if @review.save
          redirect_to swap_path(@swap), notice: 'Review for swap was successfully created.'
        else
          redirect_to swap_path(@swap), alert: 'There was an error creating your swap review.'
        end
      else
        redirect_to swap_path(@swap), alert: 'Confirm swap first.'
      end
    else
      redirect_to root_path, alert: 'Invalid review request.'
    end
  end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to swap_path(@review.swap), notice: 'Review updated.'
    else
      redirect_to swap_path(@review.swap), alert: 'Review not updated.'
    end
  end

  private

  def set_swap
    @swap = Swap.find(params[:swap_id])
  end

  def review_params
    params.require(:review).permit(:comment)
  end
