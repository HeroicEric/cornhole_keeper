class TeamsController < ApplicationController
  respond_to :json

  def index
    respond_with Team.all
  end

  def show
    respond_with Team.find(params[:id])
  end

  def create
    respond_with Team.create(params[:team])
  end
end
