require "application_system_test_case"

class DocumentaryFilmsTest < ApplicationSystemTestCase
  setup do
    @documentary_film = documentary_films(:one)
  end

  test "visiting the index" do
    visit documentary_films_url
    assert_selector "h1", text: "Documentary films"
  end

  test "should create documentary film" do
    visit documentary_films_url
    click_on "New documentary film"

    fill_in "Director", with: @documentary_film.director
    fill_in "Name", with: @documentary_film.name
    fill_in "Synopsis", with: @documentary_film.synopsis
    click_on "Create Documentary film"

    assert_text "Documentary film was successfully created"
    click_on "Back"
  end

  test "should update Documentary film" do
    visit documentary_film_url(@documentary_film)
    click_on "Edit this documentary film", match: :first

    fill_in "Director", with: @documentary_film.director
    fill_in "Name", with: @documentary_film.name
    fill_in "Synopsis", with: @documentary_film.synopsis
    click_on "Update Documentary film"

    assert_text "Documentary film was successfully updated"
    click_on "Back"
  end

  test "should destroy Documentary film" do
    visit documentary_film_url(@documentary_film)
    click_on "Destroy this documentary film", match: :first

    assert_text "Documentary film was successfully destroyed"
  end
end
