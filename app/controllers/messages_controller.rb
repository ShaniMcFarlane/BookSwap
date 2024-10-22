class MessagesController < ApplicationController
  def create
    @swap = Swap.find(params[:swap_id])
    @message = Message.new(message_params)
    @message.swap = @swap
    @message.user = current_user
    @request = Request.find(params[:request_id])
    @user = User.find(params[:user_id])
    raise
    if @message.save
      redirect_to request_user_swap_path(@request, @user, @swap), notice: 'Message sent.'
    else
      render "swaps/show", alert: 'Message not sent.'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
