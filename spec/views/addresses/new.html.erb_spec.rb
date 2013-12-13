require 'spec_helper'

describe "addresses/new" do
  before(:each) do
    assign(:address, stub_model(Address,
      :zip_cd => 1,
      :address => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", addresses_path, "post" do
      assert_select "input#address_zip_cd[name=?]", "address[zip_cd]"
      assert_select "input#address_address[name=?]", "address[address]"
      assert_select "input#address_name[name=?]", "address[name]"
    end
  end
end
