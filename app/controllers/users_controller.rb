class UsersController < ApplicationController
  respond_to :html, :json

  def index
    respond_with User.all
  end
end
