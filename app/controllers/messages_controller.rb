class MessagesController < ApplicationController
  before_action :set_request

  def index
    @message = Message.new
    @messages = @request.messages.includes(:user)
  end

  def create
    @message = @request.messages.new(message_params)
    @message.save
    redirect_to request_messages_path(@request)
  end

  private

  def set_request
    @request = Request.find(params[:request_id])
  end

  def message_params
    params.require(:message).permit(:text, :image).merge(user_id: current_user.id)
  end
end
