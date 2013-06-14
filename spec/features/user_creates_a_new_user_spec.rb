require 'spec_helper'

feature "creating a new user", %q{
  As a User
  I want to create a new User
  So that they can compete in the corn hole hall of fame
} do

  # Acceptance Criteria:
  # I must fill in first name
  # I must fill in last name

  it "creates a new user" do
    visit ember(users_path)
    click_on "Add User"
    fill_in "first_name", with: "Eric"
    fill_in "last_name", with: "Kelly"
    click_on "Create"
    expect(ember_current_path).to eq ember(users_path)
    expect(page).to have_content "Eric Kelly"
  end

  it "cancels creating a new user" do
    visit ember(new_user_path)
    click_on "Cancel"
    expect(ember_current_path).to eq ember(users_path)
  end
end
