require "test_helper"

class AssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "must associate a person with a task" do 
    # loading data from fixtures (fake data)
    task = tasks(:shop_task)
    person = people(:isabella_person)

    # associate person with task
    task.people << person

    # check if association was a success
    assert task.people.include?(person), "person didnt get associated with task"
    assert_equal 1, task.people.count, "associated persons count is not correct"
  end


end
