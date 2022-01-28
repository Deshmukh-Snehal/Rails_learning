require "application_system_test_case"

class CalculatorrsTest < ApplicationSystemTestCase
  setup do
    @calculatorr = calculatorrs(:one)
  end

  test "visiting the index" do
    visit calculatorrs_url
    assert_selector "h1", text: "Calculatorrs"
  end

  test "creating a Calculatorr" do
    visit calculatorrs_url
    click_on "New Calculatorr"

    fill_in "Name", with: @calculatorr.name
    click_on "Create Calculatorr"

    assert_text "Calculatorr was successfully created"
    click_on "Back"
  end

  test "updating a Calculatorr" do
    visit calculatorrs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @calculatorr.name
    click_on "Update Calculatorr"

    assert_text "Calculatorr was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculatorr" do
    visit calculatorrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculatorr was successfully destroyed"
  end
end
