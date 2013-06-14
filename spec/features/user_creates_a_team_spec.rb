require 'spec_helper'

feature "creating a new team process", %q{
  As a User
  I want to create a Team
  So that I can compete in the corn hole hall of fame
} do

  # Acceptance Criteria:
  # I can choose a team name

  it "creates a new team" do
    name = "The Greatest Team Ever"

    visit ember(teams_path)
    click_on "Add Team"
    fill_in "team[name]", with: name
    click_on "Create Team"

    visit ember(teams_path)
    expect(page).to have_content name
  end
end
