require 'rails_helper'

RSpec.describe "bulletins/edit", type: :view do
  before(:each) do
    @bulletin = assign(:bulletin, Bulletin.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit bulletin form" do
    render

    assert_select "form[action=?][method=?]", bulletin_path(@bulletin), "post" do

      assert_select "input[name=?]", "bulletin[title]"

      assert_select "textarea[name=?]", "bulletin[description]"
    end
  end
end
