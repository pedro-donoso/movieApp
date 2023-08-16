require "test_helper"

class DocumentaryFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @documentary_film = documentary_films(:one)
  end

  test "should get index" do
    get documentary_films_url
    assert_response :success
  end

  test "should get new" do
    get new_documentary_film_url
    assert_response :success
  end

  test "should create documentary_film" do
    assert_difference("DocumentaryFilm.count") do
      post documentary_films_url, params: { documentary_film: { director: @documentary_film.director, name: @documentary_film.name, synopsis: @documentary_film.synopsis } }
    end

    assert_redirected_to documentary_film_url(DocumentaryFilm.last)
  end

  test "should show documentary_film" do
    get documentary_film_url(@documentary_film)
    assert_response :success
  end

  test "should get edit" do
    get edit_documentary_film_url(@documentary_film)
    assert_response :success
  end

  test "should update documentary_film" do
    patch documentary_film_url(@documentary_film), params: { documentary_film: { director: @documentary_film.director, name: @documentary_film.name, synopsis: @documentary_film.synopsis } }
    assert_redirected_to documentary_film_url(@documentary_film)
  end

  test "should destroy documentary_film" do
    assert_difference("DocumentaryFilm.count", -1) do
      delete documentary_film_url(@documentary_film)
    end

    assert_redirected_to documentary_films_url
  end
end
