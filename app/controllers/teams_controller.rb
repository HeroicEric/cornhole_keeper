class TeamsController < ApplicationController
  respond_to :json

  def index
    respond_with Team.all
  end
end
