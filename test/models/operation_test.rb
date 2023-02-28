require "test_helper"

class OperationTest < ActiveSupport::TestCase
  test "check description 'Bus fare' for Operation from database" do
    operation = Operation.find_by(description: "Bus fare")
    assert_equal("Bus fare", operation.description)
  end

  test "check amount for 'Bus fare' for Operation from database" do
    operation = Operation.find_by(description: "Bus fare")
    assert_equal(20.34, operation.amount.to_f)
  end

  test "check odate for 'Bus fare' for Operation from database" do
    operation = Operation.find_by(description: "Bus fare")
    assert_equal("2023-01-01 22:54:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Buy aspirin' for Operation from database" do
    operation = Operation.find_by(description: "Buy aspirin")
    assert_equal("Buy aspirin", operation.description)
  end

  test "check amount for 'Buy aspirin' for Operation from database" do
    operation = Operation.find_by(description: "Buy aspirin")
    assert_equal(12.34, operation.amount.to_f)
  end

  test "check odate for 'Buy aspirin' for Operation from database" do
    operation = Operation.find_by(description: "Buy aspirin")
    assert_equal("2023-01-02 22:56:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'McDonalds' for Operation from database" do
    operation = Operation.find_by(description: "McDonalds")
    assert_equal("McDonalds", operation.description)
  end

  test "check amount for 'McDonalds' for Operation from database" do
    operation = Operation.find_by(description: "McDonalds")
    assert_equal(123.34, operation.amount.to_f)
  end

  test "check odate for 'McDonalds' for Operation from database" do
    operation = Operation.find_by(description: "McDonalds")
    assert_equal("2023-01-04 23:16:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Cappuccino' for Operation from database" do
    operation = Operation.find_by(description: "Cappuccino")
    assert_equal("Cappuccino", operation.description)
  end

  test "check amount for 'Cappuccino' for Operation from database" do
    operation = Operation.find_by(description: "Cappuccino")
    assert_equal(34.56, operation.amount.to_f)
  end

  test "check odate for 'Cappuccino' for Operation from database" do
    operation = Operation.find_by(description: "Cappuccino")
    assert_equal("2023-01-11 23:18:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Meal, Inexpensive Restaurant' for Operation from database" do
    operation = Operation.find_by(description: "Meal, Inexpensive Restaurant")
    assert_equal("Meal, Inexpensive Restaurant", operation.description)
  end

  test "check amount for 'Meal, Inexpensive Restaurant' for Operation from database" do
    operation = Operation.find_by(description: "Meal, Inexpensive Restaurant")
    assert_equal(89.56, operation.amount.to_f)
  end

  test "check odate for 'Meal, Inexpensive Restaurant' for Operation from database" do
    operation = Operation.find_by(description: "Meal, Inexpensive Restaurant")
    assert_equal("2023-02-14 23:20:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Milk (regular), (1 liter)' for Operation from database" do
    operation = Operation.find_by(description: "Milk (regular), (1 liter)")
    assert_equal("Milk (regular), (1 liter)", operation.description)
  end

  test "check amount for 'Milk (regular), (1 liter)' for Operation from database" do
    operation = Operation.find_by(description: "Milk (regular), (1 liter)")
    assert_equal(3.5, operation.amount.to_f)
  end

  test "check odate for 'Milk (regular), (1 liter)' for Operation from database" do
    operation = Operation.find_by(description: "Milk (regular), (1 liter)")
    assert_equal("2023-02-09 23:23:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Basic (Electricity, Heating, Cooling, Water, Garbage)' for Operation from database" do
    operation = Operation.find_by(description: "Basic (Electricity, Heating, Cooling, Water, Garbage)")
    assert_equal("Basic (Electricity, Heating, Cooling, Water, Garbage)", operation.description)
  end

  test "check amount for 'Basic (Electricity, Heating, Cooling, Water, Garbage)' for Operation from database" do
    operation = Operation.find_by(description: "Basic (Electricity, Heating, Cooling, Water, Garbage)")
    assert_equal(1200.0, operation.amount.to_f)
  end

  test "check odate for 'Basic (Electricity, Heating, Cooling, Water, Garbage)' for Operation from database" do
    operation = Operation.find_by(description: "Basic (Electricity, Heating, Cooling, Water, Garbage)")
    assert_equal("2023-01-30 23:33:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Fitness Club' for Operation from database" do
    operation = Operation.find_by(description: "Fitness Club")
    assert_equal("Fitness Club", operation.description)
  end

  test "check amount for 'Fitness Club' for Operation from database" do
    operation = Operation.find_by(description: "Fitness Club")
    assert_equal(450.0, operation.amount.to_f)
  end

  test "check odate for 'Fitness Club' for Operation from database" do
    operation = Operation.find_by(description: "Fitness Club")
    assert_equal("2023-02-02 23:38:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'Preschool' for Operation from database" do
    operation = Operation.find_by(description: "Preschool")
    assert_equal("Preschool", operation.description)
  end

  test "check amount for 'Preschool' for Operation from database" do
    operation = Operation.find_by(description: "Preschool")
    assert_equal(450.0, operation.amount.to_f)
  end

  test "check odate for 'Preschool' for Operation from database" do
    operation = Operation.find_by(description: "Preschool")
    assert_equal("2023-01-15 23:40:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'buy leather shoes' for Operation from database" do
    operation = Operation.find_by(description: "buy leather shoes")
    assert_equal("buy leather shoes", operation.description)
  end

  test "check amount for 'buy leather shoes' for Operation from database" do
    operation = Operation.find_by(description: "buy leather shoes")
    assert_equal(200.0, operation.amount.to_f)
  end

  test "check odate for 'buy leather shoes' for Operation from database" do
    operation = Operation.find_by(description: "buy leather shoes")
    assert_equal("2023-02-20 22:28:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'buy silver pen for grandpa' for Operation from database" do
    operation = Operation.find_by(description: "buy silver pen for grandpa")
    assert_equal("buy silver pen for grandpa", operation.description)
  end

  test "check amount for 'buy silver pen for grandpa' for Operation from database" do
    operation = Operation.find_by(description: "buy silver pen for grandpa")
    assert_equal(231.0, operation.amount.to_f)
  end

  test "check odate for 'buy silver pen for grandpa' for Operation from database" do
    operation = Operation.find_by(description: "buy silver pen for grandpa")
    assert_equal("2023-01-20 22:36:00", operation.odate.strftime("%Y-%m-%d %T"))
  end

  test "check description 'payment for Internet' for Operation from database" do
    operation = Operation.find_by(description: "payment for Internet")
    assert_equal("payment for Internet", operation.description)
  end

  test "check amount for 'payment for Internet' for Operation from database" do
    operation = Operation.find_by(description: "payment for Internet")
    assert_equal(100.0, operation.amount.to_f)
  end

  test "check odate for 'payment for Internet' for Operation from database" do
    operation = Operation.find_by(description: "payment for Internet")
    assert_equal("2023-02-10 22:40:00", operation.odate.strftime("%Y-%m-%d %T"))
  end
  # Valdiation checks
  test "return false in case amount is missed" do
    category = Operation.new(odate: "2023-02-10 22:40:10", description: "some description", category_id: Category.second.id)
    assert_not(category.valid?)
  end

  test "return false in case odate is missed" do
    category = Operation.new(amount: 23.56, description: "some description", category_id: Category.second.id)
    assert_not(category.valid?)
  end

  test "return false in case description is missed" do
    category = Operation.new(amount: 23.56, odate: "2023-02-10 22:40:13", category_id: Category.second.id)
    assert_not(category.valid?)
  end

  test "return false in case category_id is missed" do
    category = Operation.new(amount: 23.56, odate: "2023-02-10 22:40:15", description: "some description")
    assert_not(category.valid?)
  end

  test "return false in case all fields are missed" do
    category = Operation.new()
    assert_not(category.valid?)
  end

  test "saving and gathering Operation" do
    operation = Operation.new(amount: 45.67, odate: "2023-02-10 22:40:12", description: "some description", category_id: Category.second.id)
    operation.save()
    operation_new = Operation.find_by(description: "some description")
    assert_equal("some description", operation_new.description)
  end
end
