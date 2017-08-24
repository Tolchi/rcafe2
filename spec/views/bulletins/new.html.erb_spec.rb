require 'rails_helper'

RSpec.describe "bulletins/new", type: :view do
  before(:each) do
    assign(:bulletin, Bulletin.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new bulletin form" do
    render

    assert_select "form[action=?][method=?]", bulletins_path, "post" do

      assert_select "input[name=?]", "bulletin[title]"

      assert_select "textarea[name=?]", "bulletin[description]"
    end
  end
end
