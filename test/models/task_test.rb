require "test_helper"

class TaskTest < ActiveSupport::TestCase  
  test "Check presence of title in task" do
    task = Task.create(
      title: nil,
      description: "Sample description in task"
    )

    assert_not task.save, "Saved category without a title"
  end

  test "Check presence of description in task" do
    task = Task.create(
      title: "Sample title in task",
      description: nil
    )

    assert_not task.save, "Saved category without a description"
  end
end
