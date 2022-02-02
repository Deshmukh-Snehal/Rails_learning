require "application_system_test_case"

class CheckboxesTest < ApplicationSystemTestCase
  setup do
    @checkbox = checkboxes(:one)
  end

  test "visiting the index" do
    visit checkboxes_url
    assert_selector "h1", text: "Checkboxes"
  end

  test "creating a Checkbox" do
    visit checkboxes_url
    click_on "New Checkbox"

    click_on "Create Checkbox"

    assert_text "Checkbox was successfully created"
    click_on "Back"
  end

  test "updating a Checkbox" do
    visit checkboxes_url
    click_on "Edit", match: :first

    click_on "Update Checkbox"

    assert_text "Checkbox was successfully updated"
    click_on "Back"
  end

  test "destroying a Checkbox" do
    visit checkboxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Checkbox was successfully destroyed"
  end
end
