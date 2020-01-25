class MessagesController < ApplicationController

  def index
    @message = Message.new
    @request = Request.find(params[:request_id])
    @messages = @request.messages.includes(:user)
  end

  def create
  end

end
