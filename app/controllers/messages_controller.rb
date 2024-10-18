class MessagesController < ApplicationController
  before_action :set_swap, only: %i[create index show]

  def index
    @messages = @swap.messages.includes(:user)
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    if swap.confirmed? # rubocop:disable Style/GuardClause
      @message = @swap.messages.new(message_params)
      @message.user = current_user

      if @message.save
        redirect_to swap_path(@swap), notice: 'Message sent.'
      else
        redirect_to swap_path(@swap), alert: 'Message not sent.'
      end
    end
  end

  def update
    @message = Message.find(params[:id])
    if @message.update(message_params)
      redirect_to swap_path(@message.swap), notice: 'Message updated.'
    else
      redirect_to swap_path(@message.swap), alert: 'Message not updated.'
    end
  end

  private

  def set_swap
    @swap = Swap.find(params[:swap_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
