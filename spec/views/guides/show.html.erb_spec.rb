require 'rails_helper'

RSpec.describe "guides/show", type: :view do
  before(:each) do
    @guide = assign(:guide, Guide.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
