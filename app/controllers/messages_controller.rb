class MessagesController < ApplicationController
  before_action :set_request

  def index
    @message = Message.new
    @messages = @request.messages.includes(:user)
  end

  def create
    @message = @request.messages.new(message_params)
    if @message.save
      respond_to do |format|
        format.json
      end
    else
      @messages = @group.messages.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      redirect_to request_messages_path(@request)
    end
  end

  private

  def set_request
    @request = Request.find(params[:request_id])
  end

  def message_params
    params.require(:message).permit(:text, :image).merge(user_id: current_user.id)
  end
end
