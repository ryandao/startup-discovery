require 'spec_helper'

describe "startups/edit" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup))
  end

  it "renders the edit startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => startups_path(@startup), :method => "post" do
    end
  end
end
