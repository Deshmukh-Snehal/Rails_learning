require "application_system_test_case"

class AppoinmentinfosTest < ApplicationSystemTestCase
  setup do
    @appoinmentinfo = appoinmentinfos(:one)
  end

  test "visiting the index" do
    visit appoinmentinfos_url
    assert_selector "h1", text: "Appoinmentinfos"
  end

  test "creating a Appoinmentinfo" do
    visit appoinmentinfos_url
    click_on "New Appoinmentinfo"

    fill_in "Appoinmentinfo", with: @appoinmentinfo.appoinmentinfo
    fill_in "Doctor name", with: @appoinmentinfo.doctor_name
    fill_in "Player name", with: @appoinmentinfo.player_name
    click_on "Create Appoinmentinfo"

    assert_text "Appoinmentinfo was successfully created"
    click_on "Back"
  end

  test "updating a Appoinmentinfo" do
    visit appoinmentinfos_url
    click_on "Edit", match: :first

    fill_in "Appoinmentinfo", with: @appoinmentinfo.appoinmentinfo
    fill_in "Doctor name", with: @appoinmentinfo.doctor_name
    fill_in "Player name", with: @appoinmentinfo.player_name
    click_on "Update Appoinmentinfo"

    assert_text "Appoinmentinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Appoinmentinfo" do
    visit appoinmentinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appoinmentinfo was successfully destroyed"
  end
end
