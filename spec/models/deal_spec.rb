require 'spec_helper'

describe Deal do
    it { should have_many(:transactions) }
    it { should belong_to(:user) }
    it { should belong_to(:merchant) }
    
    it { should validate_presence_of :description }
    it { should validate_presence_of :expiry }
    it { should validate_presence_of :url }

    #it { should validate_format_of :url }
    #it { should_not allow_value("www.bart.com").for(:url) }
    it { should allow_value("www.livingsocial.com").for(:url) }

    it { should allow_mass_assignment_of(:description) }
    it { should allow_mass_assignment_of(:expiry) }
    it { should allow_mass_assignment_of(:url) }

    it { should respond_to(:description) }
    it { should respond_to(:expiry) }
    it { should respond_to(:url) }
end
