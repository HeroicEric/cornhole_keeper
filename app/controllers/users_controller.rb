class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.all
  end

  def create
    respond_with User.create(params[:user])
  end
end
