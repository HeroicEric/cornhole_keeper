require 'spec_helper'

feature "creating a new team process", %q{
  As a User
  I want to create a Team
  So that I can compete in the corn hole hall of fame
} do

  # Acceptance Criteria:
  # I can choose up to two users to be a part of the team
  # I can choose a team name

  it "creates a new one person team" do
    visit new_team_path
    check user.name
    click_on "Save Team"
    visit teams_path
    expect(page).to have_content user.name
  end
end
