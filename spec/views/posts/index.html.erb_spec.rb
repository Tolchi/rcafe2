require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    b = Bulletin.create!(title: 'workshop', description: 'VBS')
    assign(:posts, [
      Post.create!(
        title: "Title",
        context: "MyText",
        bulletin: b
      ),
      Post.create!(
        title: "Title",
        context: "MyText",
        bulletin: b
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
