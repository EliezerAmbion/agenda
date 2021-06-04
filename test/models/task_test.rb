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

  test "Check length of TITLE if MORE than 20 chars" do
    task = Task.create(
      title: "Sample title with more than 20 chars",
      description: "Sample description."
    )

    assert_not task.save, "Saved title. Current length: #{task.title.length}"
  end

  test "Check length of DESCRIPTION if MORE than 45 chars" do
    task = Task.create(
      title: "Sample title",
      description: "A sample description with more than 45 characters in length"
    )

    assert_not task.save, "Saved description. Current length: #{task.description.length}"
  end
end
