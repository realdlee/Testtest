require 'spec_helper'

describe User do
  
  it { should_not allow_mass_assignment_of(:password_digest) }
  it { should have_many(:deals) }
end
