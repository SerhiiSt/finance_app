require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "check  'Transport' Category from database" do
    category = Category.find_by(name: "Transport")
    assert_equal("Payment for gas, fares", category.description)
  end

  test "check 'Medicine' Category from database" do
    category = Category.find_by(name: "Medicine")
    assert_equal("Medicine", category.name)
  end

  test "check description for 'Medicine' Category from database" do
    category = Category.find_by(description: "Allowance for drugs, medicine procedures")
    assert_equal("Allowance for drugs, medicine procedures", category.description)
  end

  test "check 'Restaurants' Category from database" do
    category = Category.find_by(name: "Restaurants")
    assert_equal("Restaurants", category.name)
  end

  test "check description for 'Restaurants' Category from database" do
    category = Category.find_by(description: "Expenses for public places")
    assert_equal("Expenses for public places", category.description)
  end

  test "check 'Markets' Category from database" do
    category = Category.find_by(name: "Markets")
    assert_equal("Markets", category.name)
  end

  test "check description for 'Markets' Category from database" do
    category = Category.find_by(description: "Spending money on food")
    assert_equal("Spending money on food", category.description)
  end

  test "check 'Utilities (Monthly)' Category from database" do
    category = Category.find_by(name: "Utilities (Monthly)")
    assert_equal("Utilities (Monthly)", category.name)
  end

  test "check description for 'Utilities (Monthly)' Category from database" do
    category = Category.find_by(description: "Allowance for bills")
    assert_equal("Allowance for bills", category.description)
  end

  test "check 'Sports And Leisure' Category from database" do
    category = Category.find_by(name: "Sports And Leisure")
    assert_equal("Sports And Leisure", category.name)
  end

  test "check description for 'Sports And Leisure' Category from database" do
    category = Category.find_by(description: "Spendings for active rest")
    assert_equal("Spendings for active rest", category.description)
  end

  test "check 'Childcare' Category from database" do
    category = Category.find_by(name: "Childcare")
    assert_equal("Childcare", category.name)
  end

  test "check description for 'Childcare' Category from database" do
    category = Category.find_by(description: "Allowance for children")
    assert_equal("Allowance for children", category.description)
  end

  test "check 'Clothing And Shoes' Category from database" do
    category = Category.find_by(name: "Clothing And Shoes")
    assert_equal("Clothing And Shoes", category.name)
  end

  test "check description for 'Clothing And Shoes' Category from database" do
    category = Category.find_by(description: "Spending on perfect view")
    assert_equal("Spending on perfect view", category.description)
  end

  test "check 'Presents' Category from database" do
    category = Category.find_by(name: "Presents")
    assert_equal("Presents", category.name)
  end

  test "check description for 'Presents' Category from database" do
    category = Category.find_by(description: "Money spent on gifts")
    assert_equal("Money spent on gifts", category.description)
  end

  test "check 'Mobile connection and Internet' Category from database" do
    category = Category.find_by(name: "Mobile connection and Internet")
    assert_equal("Mobile connection and Internet", category.name)
  end

  test "check description for 'Mobile connection and Internet' Category from database" do
    category = Category.find_by(description: "Payment for mobile connection and Internet")
    assert_equal("Payment for mobile connection and Internet", category.description)
  end

  test "check 'Household Chemicals' Category from database" do
    category = Category.find_by(name: "Household Chemicals")
    assert_equal("Household Chemicals", category.name)
  end

  test "check for 'Household Chemicals' Category from database" do
    category = Category.find_by(name: "Household Chemicals", description: "Shampoons, deodorants")
    assert_equal("Shampoons, deodorants", category.description)
    assert_equal("Household Chemicals", category.name)
  end

  # Validators checks
  test "return false in case name is missed" do
    category = Category.new(description: "some description")
    assert_not(category.valid?)
  end

  test "return false in case description field is missed" do
    category = Category.new(name: "Test Category")
    assert_not(category.valid?)
  end

  test "return false in case all fields are missed" do
    category = Category.new()
    assert_not(category.valid?)
  end

  test "return true in case all fields are present" do
    category = Category.new(name: "Test New Category", description: "some description")
    assert(category.valid?)
  end

  test "save new Category in db" do
    category = Category.new(name: "Test New Category", description: "some description")
    category.save()
    category = Category.find_by(name: "Test New Category")
    assert_equal("some description", category.description)
  end
end
