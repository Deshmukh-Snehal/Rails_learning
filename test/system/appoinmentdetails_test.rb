require "application_system_test_case"

class AppoinmentdetailsTest < ApplicationSystemTestCase
  setup do
    @appoinmentdetail = appoinmentdetails(:one)
  end

  test "visiting the index" do
    visit appoinmentdetails_url
    assert_selector "h1", text: "Appoinmentdetails"
  end

  test "creating a Appoinmentdetail" do
    visit appoinmentdetails_url
    click_on "New Appoinmentdetail"

    fill_in "Appoinment details", with: @appoinmentdetail.appoinment_details
    click_on "Create Appoinmentdetail"

    assert_text "Appoinmentdetail was successfully created"
    click_on "Back"
  end

  test "updating a Appoinmentdetail" do
    visit appoinmentdetails_url
    click_on "Edit", match: :first

    fill_in "Appoinment details", with: @appoinmentdetail.appoinment_details
    click_on "Update Appoinmentdetail"

    assert_text "Appoinmentdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Appoinmentdetail" do
    visit appoinmentdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appoinmentdetail was successfully destroyed"
  end
end
