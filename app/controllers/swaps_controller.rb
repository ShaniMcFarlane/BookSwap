class SwapsController < ApplicationController
  def show
    @swap = Swap.find(params[:id])
    @other_user = current_user == @swap.user ? @swap.request.user : @swap.user
    # @request = Request.find(params[:request_id])
    @message = Message.new
    @messages = @swap.messages
  end

  def create
    @swap = Swap.new(swap_params)
    @request = Request.find(params[:request_id])
    @book = Book.find(params[:swap][:book_id])
    @user = User.find(params[:user_id])
    @swap.request = @request
    @swap.book = @book
    @swap.user = current_user
    @swap.status = 'pending'

    if @swap.save
      redirect_to profile_path(@request, @user, @swap), notice: 'Swap requested.'
    else
      redirect_to requests_path, alert: 'Swap not requested.'
    end
  end

  def update
    @swap = Swap.find(params[:id])
    if @swap.update(status: 'confirmed')
      redirect_to swap_path(@swap), notice: 'Swap confirmed.'
    else
      redirect_to book_path(@swap.book), alert: 'Unable to confirm swap.'
    end
  end

  private

  def swap_params
    params.require(:swap).permit(:book_id)
  end
end
