class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  validates_presence_of :first_name
  validates_presence_of :last_name

  has_many :team_memberships,
    inverse_of: :user

  has_many :teams,
    through: :team_memberships

  def full_name
    [first_name, last_name].join(" ")
  end
end
