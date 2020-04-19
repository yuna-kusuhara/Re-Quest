class RequestUsersController < ApplicationController
  before_action :set_request, only: [:new, :create]

  def new
    @request_user = RequestUser.new
  end

  def create
  end

  private

  def user_apply
  end

  def set_request
    @request = Request.find(params[:request_id])
  end
end
