require "application_system_test_case"

class InstablogsTest < ApplicationSystemTestCase
  setup do
    @instablog = instablogs(:one)
  end

  test "visiting the index" do
    visit instablogs_url
    assert_selector "h1", text: "Instablogs"
  end

  test "should create instablog" do
    visit instablogs_url
    click_on "New instablog"

    fill_in "Body", with: @instablog.body
    fill_in "Image", with: @instablog.image
    click_on "Create Instablog"

    assert_text "Instablog was successfully created"
    click_on "Back"
  end

  test "should update Instablog" do
    visit instablog_url(@instablog)
    click_on "Edit this instablog", match: :first

    fill_in "Body", with: @instablog.body
    fill_in "Image", with: @instablog.image
    click_on "Update Instablog"

    assert_text "Instablog was successfully updated"
    click_on "Back"
  end

  test "should destroy Instablog" do
    visit instablog_url(@instablog)
    click_on "Destroy this instablog", match: :first

    assert_text "Instablog was successfully destroyed"
  end
end
