require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    b = Bulletin.create!(title: 'workshop', description: 'VBS')
    @post = assign(:post, Post.create!(
      title: "Title",
      context: "MyText",
      bulletin: b
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
