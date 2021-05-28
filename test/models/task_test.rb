require "test_helper"

class TaskTest < ActiveSupport::TestCase  
  # setup do
  #   @task = tasks(:one)
  # end
  
  test "must have a title" do
    task = Task.new
    task.description = 'Task desc 1'

    assert_not task.save, "Saved task w/o a title"
  end
end
