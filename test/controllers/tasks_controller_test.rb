require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
    @task = tasks(:one)
  end

  test "should get index" do
    get category_tasks_url(@category)
    assert_response :success
  end

  test "should get new" do
    get new_category_task_url(@category)
    assert_response :success
  end

  test "should create a task" do
    post category_tasks_url(@category), params: { task: {title: 'Unique', description: @task.description, deadline: Date.tomorrow, done: false } }

    assert_redirected_to category_path(@category)
  end

  test "should show a task" do
    get category_task_url(@category, @task)
    assert_response :success
  end

  test "should edit a task" do
    get edit_category_task_url(@category, @task)
    assert_response :success
  end

  test "should update a task" do
    put category_task_url(@category, @task), params: { task: {title: 'Unique update', description: @task.description, deadline: Date.tomorrow, done: false } }

    assert_redirected_to category_task_url(@category)
  end

  test "should delete a task" do
    delete category_task_url(@category, @task)
    assert_redirected_to category_url(@category)
  end
end
