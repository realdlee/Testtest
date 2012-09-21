require 'spec_helper'

describe Merchant do
  it { should have_many(:deals) }
  it { should allow_mass_assignment_of :name }
end
