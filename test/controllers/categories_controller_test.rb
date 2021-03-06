require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:category_table)
    @user = users(:eli)

    sign_in(@user)
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference 'Category.count', 1 do
      post categories_path, params: { category: { title: 'category title', description: 'category description create' } }
      assert_redirected_to home_path
    end
    # home_url is index
  end

  test "should show a category" do
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    put category_url(@category), params: { category: { title: 'category title update', description: 'category description update' } }
    assert_redirected_to edit_category_path
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(@category)
    end

    assert_redirected_to home_url
  end
end
