require "test_helper"

class EntreTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entre = entre.new(meal_type: "breakfast", carbohydrates:35, protiens:20, fats: 10, calories: 400)
    assert entre.save
  end

  test "should not save entry without calories"do
  entre = entre.new(meal_type: "breakfast", carbohydrates:35, protiens:20, fats: 10, calories: 400)
  assert_not entre.save
end

test "should not save entry without carbohydrates"do
end 

test "should not save entry without protiens"do
end

test "should not save entry without fats"do
end



end
