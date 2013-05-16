class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  validates_presence_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name

  def full_name
    [first_name, last_name].join(" ")
  end
end
