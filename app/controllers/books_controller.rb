class BooksController < ApplicationController
  def index
    # @books = Book.all
    if params[:query].present?
      @books = Book.search_books(params[:query])
    else
      @books = Book.all

    end

    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window_partial", locals: { user: user }),
        marker_html: render_to_string(partial: "book_marker")
      }

    end
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
    @reviews = @book.reviews
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
    @swap = Swap.create(book: @book, requested_book: @requested_book, status: 'pending')
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
