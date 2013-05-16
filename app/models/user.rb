class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  validates_presence_of :first_name
  validates_presence_of :last_name

  has_and_belongs_to_many :team_memberships,
    class_name: "TeamMembership",
    join_table: :team_memberships

  def name
    [first_name, last_name].join(" ")
  end
end
