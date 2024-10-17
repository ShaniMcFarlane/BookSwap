class RequestsController < ApplicationController
  def index
    @requests = current_user.requests.includes(:book)
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user

    Rails.logger.debug("Request params: #{request_params.inspect}")
    Rails.logger.debug("Request user: #{current_user.inspect}")

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
