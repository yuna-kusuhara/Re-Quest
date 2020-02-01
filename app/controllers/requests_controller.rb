class RequestsController < ApplicationController
  before_action :set_user, only: [:new, :create]
  before_action :set_request, only: [:edit, :update]

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @user.requests.create(request_params)
    redirect_to root_path
  end

  def edit
    @users = @request.messages.group(:user_id).includes(:user)
  end

  def update
  end

  private

  def request_params
    params.require(:request).permit(:title, :item, :price, :location, :datelimit, :image, :map_irl)
  end

  def set_user
    @user = current_user
  end

  def set_request
    @request = Request.find(params[:id])
  end
end
