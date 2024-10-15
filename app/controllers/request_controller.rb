class RequestController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new
    @request.save
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
  end
end
