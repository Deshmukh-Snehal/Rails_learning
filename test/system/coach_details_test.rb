require "application_system_test_case"

class CoachDetailsTest < ApplicationSystemTestCase
  setup do
    @coach_detail = coach_details(:one)
  end

  test "visiting the index" do
    visit coach_details_url
    assert_selector "h1", text: "Coach Details"
  end

  test "creating a Coach detail" do
    visit coach_details_url
    click_on "New Coach Detail"

    fill_in "Age", with: @coach_detail.age
    fill_in "Country", with: @coach_detail.country
    fill_in "Email", with: @coach_detail.email
    fill_in "Name", with: @coach_detail.name
    fill_in "Sport", with: @coach_detail.sport
    fill_in "Sport", with: @coach_detail.sport_id
    click_on "Create Coach detail"

    assert_text "Coach detail was successfully created"
    click_on "Back"
  end

  test "updating a Coach detail" do
    visit coach_details_url
    click_on "Edit", match: :first

    fill_in "Age", with: @coach_detail.age
    fill_in "Country", with: @coach_detail.country
    fill_in "Email", with: @coach_detail.email
    fill_in "Name", with: @coach_detail.name
    fill_in "Sport", with: @coach_detail.sport
    fill_in "Sport", with: @coach_detail.sport_id
    click_on "Update Coach detail"

    assert_text "Coach detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Coach detail" do
    visit coach_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coach detail was successfully destroyed"
  end
end
