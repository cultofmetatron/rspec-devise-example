require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:logged_in, true)
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


end
