require "application_system_test_case"

class PurposesTest < ApplicationSystemTestCase
  setup do
    @purpose = purposes(:one)
  end

  test "visiting the index" do
    visit purposes_url
    assert_selector "h1", text: "Purposes"
  end

  test "should create purpose" do
    visit purposes_url
    click_on "New purpose"

    fill_in "Booking", with: @purpose.booking_id
    fill_in "Customer", with: @purpose.customer_id
    fill_in "Their purpose", with: @purpose.their_purpose
    click_on "Create Purpose"

    assert_text "Purpose was successfully created"
    click_on "Back"
  end

  test "should update Purpose" do
    visit purpose_url(@purpose)
    click_on "Edit this purpose", match: :first

    fill_in "Booking", with: @purpose.booking_id
    fill_in "Customer", with: @purpose.customer_id
    fill_in "Their purpose", with: @purpose.their_purpose
    click_on "Update Purpose"

    assert_text "Purpose was successfully updated"
    click_on "Back"
  end

  test "should destroy Purpose" do
    visit purpose_url(@purpose)
    click_on "Destroy this purpose", match: :first

    assert_text "Purpose was successfully destroyed"
  end
end
