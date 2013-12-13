require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :zip_cd => 1,
      :address => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", address_path(@address), "post" do
      assert_select "input#address_zip_cd[name=?]", "address[zip_cd]"
      assert_select "input#address_address[name=?]", "address[address]"
      assert_select "input#address_name[name=?]", "address[name]"
    end
  end
end
