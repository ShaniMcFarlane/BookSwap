class RequestsController < ApplicationController
  def index
    @requests = current_user.requests.includes(:book)
    @my_requests = Request.where(user_id: current_user.id)
    @requested_books = Request.where(book_id: current_user.books.pluck(:id))
  end

  def show
    @request = Request.where(user_id: current_user.id)
    @book_requests_from_me = Request.joins(:book).where(books: { user_id: current_user.id })
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user

    if @request.save
      redirect_to requests_path, notice: 'Swap request created.'
    else
      redirect_to books_path, alert: 'Swap request not created.'
    end
  end

  def destroy
    @request = Request.find(params[:id])
    if @request.destroy
      redirect_to requests_path, notice: 'Swap request deleted.'
    else
      redirect_to requests_path, alert: 'Swap request not deleted'
    end
  end

  private

  def request_params
    params.require(:request).permit(:book_id)
  end
end
