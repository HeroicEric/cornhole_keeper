require 'spec_helper'

describe Team do
  it { should have_many :team_memberships }
  it { should have_many :users }

  let(:team) { Team.new }

  describe "name" do
    it "responds to name" do
      expect(team).to respond_to :name
    end

    context "team name explicitly set" do
      it "returns explicitly set team name"
    end

    context "team name not explicitly set" do
      it "returns an appropriate team name"
    end
  end
end
