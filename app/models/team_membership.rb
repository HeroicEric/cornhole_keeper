class TeamMembership < ActiveRecord::Base
  attr_accessible :team_id, :user_id

  validates_presence_of :team

  belongs_to :team
  belongs_to :user
end
