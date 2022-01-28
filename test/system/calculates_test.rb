require "application_system_test_case"

class CalculatesTest < ApplicationSystemTestCase
  setup do
    @calculate = calculates(:one)
  end

  test "visiting the index" do
    visit calculates_url
    assert_selector "h1", text: "Calculates"
  end

  test "creating a Calculate" do
    visit calculates_url
    click_on "New Calculate"

    fill_in "Name", with: @calculate.name
    click_on "Create Calculate"

    assert_text "Calculate was successfully created"
    click_on "Back"
  end

  test "updating a Calculate" do
    visit calculates_url
    click_on "Edit", match: :first

    fill_in "Name", with: @calculate.name
    click_on "Update Calculate"

    assert_text "Calculate was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculate" do
    visit calculates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculate was successfully destroyed"
  end
end
