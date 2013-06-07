class Team < ActiveRecord::Base
  attr_accessible :name

  has_many :team_memberships,
    inverse_of: :team

  has_many :users,
    through: :team_memberships,
    inverse_of: :team
end
