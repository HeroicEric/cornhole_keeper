class TeamMembership < ActiveRecord::Base
  validates_presence_of :team

  belongs_to :team
  belongs_to :user
end
