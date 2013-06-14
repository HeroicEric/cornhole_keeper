class TeamMembershipSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id

  has_one :team
  has_one :user
end
