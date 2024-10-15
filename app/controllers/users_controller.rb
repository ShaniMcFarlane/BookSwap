class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[profile edit update]

  def index
    @users = User.all
  end

  def profile
    @user = current_user
    @books = @user.books
    @requests = @user.requests
    @requests_made = Request.where(user: @user)
    @requests_received = Request.where(book: @user.books)
  end

  def show
    @user = User.find(params[:id])
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
