require 'spec_helper'

feature "user views team index", %q{
  As a User
  I want to view the team index page
  So that I can see all of the teams that are in the system
} do

  # Acceptance Criteria:
  # * I see all of the teams listed

  it "sees all of the teams listed" do
    team1 = FactoryGirl.create(:team)
    team2 = FactoryGirl.create(:team)

    visit teams_path

    expect(page).to have_content team1.name
    expect(page).to have_content team2.name
  end
end
