require 'spec_helper'

feature "user sees users index page", %q{
  As a User
  I want to see all the Users in the system
  So that I can see who I can play with
} do

  # Acceptance Criteria:
  # I can see every user that is in the system

  let!(:user) { FactoryGirl.create(:user) }

  it "sees all of the Users" do
    binding.pry
    visit e(users_path)
    expect(page).to have_content user.first_name
  end
end

def e(path)
  '/#' + path
end
