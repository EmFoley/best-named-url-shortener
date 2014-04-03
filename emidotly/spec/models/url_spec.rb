require 'spec_helper'

describe Url do 
  it { should allow_mass_assignment_of :short_url }
  it { should allow_mass_assignment_of :long_url }
  it { should validate_presence_of :short_url }
  it { should validate_presence_of :long_url }

  it "should save valid urls" do
    url = create(:url)
    url.should be_valid
  end

  it "should not save invalid urls" do 
    url = build(:url, long_url: "lhqweh")
    url.should_not be_valid
  end

end