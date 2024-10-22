class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[profile edit update]

  def index
    @users = User.all
  end

  def profile
    @books = current_user.books
    @swaps_pending = current_user.swaps.where(status: 'pending') + current_user.swaps_as_owner.where(status: 'pending')
    # current_user.requests
    # current_user.requests_as_owner

    # @book = Book.find(params[:book_id]) if params[:book_id].present?
    # @swaps = Swap.find(params[:swap_id]) if params[:swap_id].present?

    # @swaps_as_owner = Swap.joins(:book).where(status: 'pending').where(books: { user_id: current_user.id })
    # @swaps_as_requester = Swap.joins(:request).where(status: 'pending').where(requests: { user_id: current_user.id })

    # @requests_made = Request.where(user: current_user)
    # @requests_received = Request.where(book: current_user.books)

    # @swaps_pending = Swap.joins(:request).where(status: 'pending').where(requests: { user_id: current_user.id })
    # @swaps_confirmed = Swap.joins(:request).where(status: 'confirmed').where(requests: { user_id: current_user.id })
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @swaps = Swap.where(user: @user)
    @request = Request.find(params[:request_id])
    @swaps_received = Swap.joins(:book).where(books: { user: @user })
    @swaps_confirmed = Swap.where(status: 'confirmed').where('user_id = ? OR books.user_id = ?', @user.id, @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to profile_path, notice: 'Profile updated!'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :location, :email)
  end
end
