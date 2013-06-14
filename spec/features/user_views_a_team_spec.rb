require 'spec_helper'

feature "user views a team", %q{
  As a User
  I want to view a Team's page
  So that I can see who is on the team
} do

  # Acceptance Criteria:
  # I can see the name of the team
  # I can see the members of the team

  it "views a team's page" do
    team_membership = FactoryGirl.create(:team_membership)
    user = team_membership.user
    team = team_membership.team

    visit ember(team_path(team))

    expect(page).to have_content team.name
    within ".team-members" do
      expect(page).to have_content user.full_name
    end
  end
end
