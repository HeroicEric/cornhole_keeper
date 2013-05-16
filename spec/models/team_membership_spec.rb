require 'spec_helper'

describe TeamMembership do
  it { should validate_presence_of :team }
  it { should belong_to :team }
  it { should belong_to :user }
end
