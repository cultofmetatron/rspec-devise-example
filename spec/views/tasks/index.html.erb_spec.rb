require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :name => "Name",
        :content => "MyText",
        :owner => 1,
        :done => false
      ),
      Task.create!(
        :name => "Name",
        :content => "MyText",
        :owner => 1,
        :done => false
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
