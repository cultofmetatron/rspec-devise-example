require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :name => "MyString",
      :content => "MyText",
      :owner => 1,
      :done => false
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_name[name=?]", "task[name]"

      assert_select "textarea#task_content[name=?]", "task[content]"

      assert_select "input#task_owner[name=?]", "task[owner]"

      assert_select "input#task_done[name=?]", "task[done]"
    end
  end
end
