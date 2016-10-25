require 'test_helper'

class UpcomingGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upcoming_game = upcoming_games(:one)
  end

  test "should get index" do
    get upcoming_games_url
    assert_response :success
  end

  test "should get new" do
    get new_upcoming_game_url
    assert_response :success
  end

  test "should create upcoming_game" do
    assert_difference('UpcomingGame.count') do
      post upcoming_games_url, params: { upcoming_game: { date: @upcoming_game.date, location: @upcoming_game.location, team1: @upcoming_game.team1, team2: @upcoming_game.team2, time: @upcoming_game.time } }
    end

    assert_redirected_to upcoming_game_url(UpcomingGame.last)
  end

  test "should show upcoming_game" do
    get upcoming_game_url(@upcoming_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_upcoming_game_url(@upcoming_game)
    assert_response :success
  end

  test "should update upcoming_game" do
    patch upcoming_game_url(@upcoming_game), params: { upcoming_game: { date: @upcoming_game.date, location: @upcoming_game.location, team1: @upcoming_game.team1, team2: @upcoming_game.team2, time: @upcoming_game.time } }
    assert_redirected_to upcoming_game_url(@upcoming_game)
  end

  test "should destroy upcoming_game" do
    assert_difference('UpcomingGame.count', -1) do
      delete upcoming_game_url(@upcoming_game)
    end

    assert_redirected_to upcoming_games_url
  end
end
