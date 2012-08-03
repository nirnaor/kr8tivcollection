require 'spec_helper'

describe "jewels/show" do
  before(:each) do
    @jewel = assign(:jewel, stub_model(Jewel,
      :name => "Name",
      :description => "Description",
      :weight => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
