require "application_system_test_case"

class CoachinfosTest < ApplicationSystemTestCase
  setup do
    @coachinfo = coachinfos(:one)
  end

  test "visiting the index" do
    visit coachinfos_url
    assert_selector "h1", text: "Coachinfos"
  end

  test "creating a Coachinfo" do
    visit coachinfos_url
    click_on "New Coachinfo"

    fill_in "Age", with: @coachinfo.age
    fill_in "Country", with: @coachinfo.country
    fill_in "Name", with: @coachinfo.name
    fill_in "Sportname", with: @coachinfo.sportname
    click_on "Create Coachinfo"

    assert_text "Coachinfo was successfully created"
    click_on "Back"
  end

  test "updating a Coachinfo" do
    visit coachinfos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @coachinfo.age
    fill_in "Country", with: @coachinfo.country
    fill_in "Name", with: @coachinfo.name
    fill_in "Sportname", with: @coachinfo.sportname
    click_on "Update Coachinfo"

    assert_text "Coachinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Coachinfo" do
    visit coachinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coachinfo was successfully destroyed"
  end
end
