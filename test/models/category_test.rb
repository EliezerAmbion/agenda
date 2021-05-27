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

  test "Check length of description if MORE than 10 chars" do
    category = Category.new(
      title: "Sample title",
      description: "Sample description with more than 10 characteres in length."
    )

    assert category.save, "Saved description. Current length: #{category.description.length}"
  end

  test "Check length of description if LESS than 10 chars" do
    category = Category.new(
      title: "Sample title",
      description: "A"
    )

    assert_not category.save, "Saved description. Current length: #{category.description.length}"
  end
  
end
