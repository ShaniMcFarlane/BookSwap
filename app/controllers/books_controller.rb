require 'json'
require 'open-uri'

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
        info_window_html: render_to_string(partial: "info_window_partial", locals: { user: }),
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
    unless @book.barcode.nil?
      url = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{@book.barcode}&key=#{ENV['GOOGLE_BOOKS_API_KEY']}"
      response = URI.open(url).read
      data = JSON.parse(response)
      @book.title = data['items'][0]['volumeInfo']['title']
      @book.author = data['items'][0]['volumeInfo']['authors'][0]
      @book.genre = data['items'][0]['volumeInfo']['categories'][0]
      @book.publish_date = data['items'][0]['volumeInfo']['publishedDate']
      image = data['items'][0]['volumeInfo']['imageLinks']['thumbnail']
      file = URI.parse(image).open
      @book.photo.attach(io: file, filename: "#{@book.title}.jpg", content_type: "image/png")
    end
    @book.user = current_user
    if @book.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  # def destroy
  #   @book = Book.find(params[:id])
  #   @book.destroy
  #   redirect_to books_path, status: :see_other
  # end

  def destroy
    @book = Book.find(params[:id])
    if @book.user == current_user
      @book.destroy
      # redirect_to profile_path, status: :see_other
      redirect_to profile_path, notice: "Book was successfully deleted."
    else
      redirect_to profile_path, alert: "Book was not deleted."
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :publish_date, :barcode)
  end
end
