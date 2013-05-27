require 'spec_helper'

describe User do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }

  it { should have_and_belong_to_many :team_memberships }

  let(:first_name) { "Eric" }
  let(:last_name) { "Kelly" }
  let(:attributes) do
    {
      first_name: first_name,
      last_name: last_name
    }
  end
  let(:user) { User.new(attributes) }

  it "has a first name" do
    expect(user.first_name).to eql first_name
  end

  it "has a last name" do
    expect(user.last_name).to eql last_name
  end

  it "has a full name" do
    expect(user.full_name).to eql "Eric Kelly"
  end
end
