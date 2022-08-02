require "application_system_test_case"

class MotorbikesTest < ApplicationSystemTestCase
  setup do
    @motorbike = motorbikes(:one)
  end

  test "visiting the index" do
    visit motorbikes_url
    assert_selector "h1", text: "Motorbikes"
  end

  test "should create motorbike" do
    visit motorbikes_url
    click_on "New motorbike"

    fill_in "Model", with: @motorbike.model
    fill_in "Name", with: @motorbike.name
    fill_in "Year", with: @motorbike.year
    click_on "Create Motorbike"

    assert_text "Motorbike was successfully created"
    click_on "Back"
  end

  test "should update Motorbike" do
    visit motorbike_url(@motorbike)
    click_on "Edit this motorbike", match: :first

    fill_in "Model", with: @motorbike.model
    fill_in "Name", with: @motorbike.name
    fill_in "Year", with: @motorbike.year
    click_on "Update Motorbike"

    assert_text "Motorbike was successfully updated"
    click_on "Back"
  end

  test "should destroy Motorbike" do
    visit motorbike_url(@motorbike)
    click_on "Destroy this motorbike", match: :first

    assert_text "Motorbike was successfully destroyed"
  end
end
