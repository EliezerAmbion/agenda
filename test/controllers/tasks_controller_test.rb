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
end
