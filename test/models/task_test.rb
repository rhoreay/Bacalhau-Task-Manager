require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cant save task without a title" do
    task = Task.new(status: "pending")
    assert_not task.save, "saved a task without title"
    # 'assert_not' waits a error, if it dont happen
    # test will return "saved a task without title"
  end

  test "cant save a task with invalid status" do
    task = Task.new(title: "Test Task", status: "inexistent_status")
    assert_not task.save, "saved a task with invalid status"
    # 'assert_not' waits a error, if it dont happen
    # test will return "saved a task with invalid status"
  end

  test "must save with valid data" do
    task = Task.new(title: "Test Task", status: "pending")
    assert task.save, "fail when saving a task with valid data"
    # assert waits a success, if it dont happen
    # test will return "fail when saving a task with valid data"
  end

end
