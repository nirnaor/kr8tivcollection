require 'spec_helper'

describe "jewels/index" do
  before(:each) do
    assign(:jewels, [
      stub_model(Jewel,
        :name => "Name",
        :description => "Description",
        :weight => 1
      ),
      stub_model(Jewel,
        :name => "Name",
        :description => "Description",
        :weight => 1
      )
    ])
  end

  it "renders a list of jewels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
