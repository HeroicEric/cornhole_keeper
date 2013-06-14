require 'spec_helper'

feature "user adds a User to a team", %q{
  As a User
  I want to add a User to a Team
  So that the Team can compete
} do

  # Acceptance Criteria:
  # I can choose up to two users to be a part of the team
  # I cannot add a player that is already on the team

  given!(:user) { FactoryGirl.create(:user) }
  given!(:team) { FactoryGirl.create(:team) }

  scenario "user adds a user to a team" do
    visit ember(team_path(team))
    choose_user user
    expect_team_to_have_user(team, user)
  end

  def choose_user(user)
    within ".add-a-team-member" do
      click_on user.full_name
    end
  end

  def expect_team_to_have_user(team, user)
    visit ember(team_path(team))
    within ".team-members" do
      expect(page).to have_content user.full_name
    end
  end
end
