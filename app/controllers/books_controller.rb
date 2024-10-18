class BooksController < ApplicationController
  def index
    @books = Book.all
    if params[:query].present?
      @books = Book.search_books(params[:query])
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
    @reviews = @book.reviews.includes(:user)
    @book = Book.includes(:reviews).find(params[:id])
    @user = @book.user
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :publish_date)
  end
end
