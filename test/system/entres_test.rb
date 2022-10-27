require "application_system_test_case"

class EntresTest < ApplicationSystemTestCase
  setup do
    @entre = entres(:breakfast)
  end

  test "visiting the index" do
    visit entres_url
    assert_selector "h1", text: "Entres"
  end

  test "should create entre" do
    visit entres_url
    click_on "create new entry"

    fill_in "Calories", with: @entre.calories
    fill_in "Carbohydrates", with: @entre.carbohydrates
    fill_in "Fats", with: @entre.fats
    fill_in "Meal type", with: @entre.meal_type
    fill_in "Protiens", with: @entre.protiens
    click_on "Create Entre"

    assert_text "Entre was successfully created"
    click_on "Back"
  end

  test "should update Entre" do
    visit entre_url(@entre)
    click_on "Edit this entre", match: :first

    fill_in "Calories", with: @entre.calories
    fill_in "Carbohydrates", with: @entre.carbohydrates
    fill_in "Fats", with: @entre.fats
    fill_in "Meal type", with: @entre.meal_type
    fill_in "Protiens", with: @entre.protiens
    click_on "Update Entre"

    assert_text "Entre was successfully updated"

  end

  test "should destroy Entre" do
    visit entre_url(@entre)
    click_on "Destroy this entre", match: :first

    assert_text "Entre was successfully destroyed"
  end
end
