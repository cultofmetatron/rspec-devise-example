require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :name => "MyString",
      :content => "MyText",
      :owner => 1,
      :done => false
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_name[name=?]", "task[name]"

      assert_select "textarea#task_content[name=?]", "task[content]"

      assert_select "input#task_owner[name=?]", "task[owner]"

      assert_select "input#task_done[name=?]", "task[done]"
    end
  end
end
