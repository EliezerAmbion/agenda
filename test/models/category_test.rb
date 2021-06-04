require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # setup do
  #   @category = categories(:one)
  # end

  test "Check presence of title in category" do
    category = Category.create(
      title: nil,
      description: "Sample description"
    )

    assert_not category.save, "Saved category without a title"
  end

  test "Check presence of description in category" do
    category = Category.create(
      title: "Sample title",
      description: nil
    )

    assert_not category.save, "Saved category without a description"
  end

  test "Should not save with an empty string" do
    category = Category.create(
      title: "",
      description: ""
    )

    assert_not category.save, "Saved category description with less than 5 chars. Current length: #{category.description.length}"
  end

  test "Check length of TITLE if MORE than 20 chars" do
    category = Category.new(
      title: "Sample title with more than 20 characteres in length.",
      description: "Sample Description"
    )

    assert_not category.save, "Saved title. Current length: #{category.title.length}"
  end

  test "Check length of description if MORE than 60 chars" do
    category = Category.new(
      title: "Sample title",
      description: "Sample description with more than 60 characteres in length. Again. This is a sample description with more than 10 characteres in length."
    )

    assert_not category.save, "Saved description. Current length: #{category.description.length}"
  end

  test "Check length of description if LESS than 5 chars" do
    category = Category.new(
      title: "Sample title",
      description: "A"
    )

    assert_not category.save, "Saved description. Current length: #{category.description.length}"
  end
  
end
