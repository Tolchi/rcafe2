require 'rails_helper'

RSpec.describe "bulletins/index", type: :view do
  before(:each) do
    assign(:bulletins, [
      Bulletin.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Bulletin.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of bulletins" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
