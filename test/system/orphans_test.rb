require "application_system_test_case"

class OrphansTest < ApplicationSystemTestCase
  setup do
    @orphan = orphans(:one)
  end

  test "visiting the index" do
    visit orphans_url
    assert_selector "h1", text: "Orphans"
  end

  test "creating a Orphan" do
    visit orphans_url
    click_on "New Orphan"

    fill_in "Age", with: @orphan.age
    fill_in "Description", with: @orphan.description
    fill_in "Image", with: @orphan.image
    fill_in "Name", with: @orphan.name
    fill_in "Sex", with: @orphan.sex
    click_on "Create Orphan"

    assert_text "Orphan was successfully created"
    click_on "Back"
  end

  test "updating a Orphan" do
    visit orphans_url
    click_on "Edit", match: :first

    fill_in "Age", with: @orphan.age
    fill_in "Description", with: @orphan.description
    fill_in "Image", with: @orphan.image
    fill_in "Name", with: @orphan.name
    fill_in "Sex", with: @orphan.sex
    click_on "Update Orphan"

    assert_text "Orphan was successfully updated"
    click_on "Back"
  end

  test "destroying a Orphan" do
    visit orphans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orphan was successfully destroyed"
  end
end
