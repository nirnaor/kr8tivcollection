require 'spec_helper'

describe "jewels/edit" do
  before(:each) do
    @jewel = assign(:jewel, stub_model(Jewel,
      :name => "MyString",
      :description => "MyString",
      :weight => 1
    ))
  end

  it "renders the edit jewel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jewels_path(@jewel), :method => "post" do
      assert_select "input#jewel_name", :name => "jewel[name]"
      assert_select "input#jewel_description", :name => "jewel[description]"
      assert_select "input#jewel_weight", :name => "jewel[weight]"
    end
  end
end
