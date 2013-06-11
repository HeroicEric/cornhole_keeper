class TeamMembershipsController < ApplicationController
  respond_to :json

  def index
    respond_with TeamMembership.all
  end

  def show
    respond_with TeamMembership.find(params[:id])
  end

  def create
    respond_with TeamMembership.create(params[:team_membership])
  end
end
