require "application_system_test_case"

class SeriesTest < ApplicationSystemTestCase
  setup do
    @series = series(:one)
  end

  test "visiting the index" do
    visit series_url
    assert_selector "h1", text: "Series"
  end

  test "should create serie" do
    visit series_url
    click_on "New serie"

    fill_in "Director", with: @series.director
    fill_in "Name", with: @series.name
    fill_in "Synopsis", with: @series.synopsis
    click_on "Create Serie"

    assert_text "Serie was successfully created"
    click_on "Back"
  end

  test "should update Serie" do
    visit series_url(@series)
    click_on "Edit this serie", match: :first

    fill_in "Director", with: @series.director
    fill_in "Name", with: @series.name
    fill_in "Synopsis", with: @series.synopsis
    click_on "Update Serie"

    assert_text "Serie was successfully updated"
    click_on "Back"
  end

  test "should destroy Serie" do
    visit series_url(@series)
    click_on "Destroy this serie", match: :first

    assert_text "Serie was successfully destroyed"
  end
end
