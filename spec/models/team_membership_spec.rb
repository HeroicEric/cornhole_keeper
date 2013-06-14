require 'spec_helper'

describe TeamMembership do
  it { should validate_presence_of :team }
  it { should belong_to :team }
  it { should belong_to :user }

  it "doesnt allow mass assignment of team_id" do
    pending "This should not be accessible once users can sign in"
    should_not allow_mass_assignment_of :team_id
  end

  it "doesnt allow mass assignment of user_id" do
    pending "This should not be accessible once users can sign in"
    should_not allow_mass_assignment_of :user_id
  end
end
