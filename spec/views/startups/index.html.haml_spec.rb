require 'spec_helper'

describe "startups/index" do
  before(:each) do
    assign(:startups, [
      stub_model(Startup),
      stub_model(Startup)
    ])
  end

  it "renders a list of startups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
