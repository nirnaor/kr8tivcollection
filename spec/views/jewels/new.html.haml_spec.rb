require 'spec_helper'

describe "jewels/new" do
  before(:each) do
    assign(:jewel, stub_model(Jewel,
      :name => "MyString",
      :description => "MyString",
      :weight => 1
    ).as_new_record)
  end

  it "renders new jewel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jewels_path, :method => "post" do
      assert_select "input#jewel_name", :name => "jewel[name]"
      assert_select "input#jewel_description", :name => "jewel[description]"
      assert_select "input#jewel_weight", :name => "jewel[weight]"
    end
  end
end
