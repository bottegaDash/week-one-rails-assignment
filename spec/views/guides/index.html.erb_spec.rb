require 'rails_helper'

RSpec.describe "guides/index", type: :view do
  before(:each) do
    assign(:guides, [
      Guide.create!(
        :title => "Title"
      ),
      Guide.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of guides" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
