class MessagesController < ApplicationController
  def create
    @swap = Swap.find(params[:swap_id])
    @message = Message.new(message_params)
    @message.swap = @swap
    @message.user = current_user
    if @message.save
      redirect_to swap_path(@swap), notice: 'Message sent.'
    else
      render "swaps/show", alert: 'Message not sent.'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
