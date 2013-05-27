require 'spec_helper'

feature "user sees users index page", %q{
  As a User
  I want to see all the Users in the system
  So that I can see who I can play with
} do

  # Acceptance Criteria:
  # I can see every user that is in the system

  let!(:user1) { FactoryGirl.create(:user) }
  let!(:user2) { FactoryGirl.create(:user) }

  it "sees all of the Users listed" do
    visit e(users_path)
    expect(page).to have_content user1.first_name
    expect(page).to have_content user2.first_name
  end
end

def e(path)
  '/#' + path
end
