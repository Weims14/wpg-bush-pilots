require 'test_helper'

class GoaltendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goaltender = goaltenders(:one)
  end

  test "should get index" do
    get goaltenders_url
    assert_response :success
  end

  test "should get new" do
    get new_goaltender_url
    assert_response :success
  end

  test "should create goaltender" do
    assert_difference('Goaltender.count') do
      post goaltenders_url, params: { goaltender: { ga: @goaltender.ga, gaa: @goaltender.gaa, gp: @goaltender.gp, loses: @goaltender.loses, name: @goaltender.name, number: @goaltender.number, otl: @goaltender.otl, shutouts: @goaltender.shutouts, winpercent: @goaltender.winpercent, wins: @goaltender.wins } }
    end

    assert_redirected_to goaltender_url(Goaltender.last)
  end

  test "should show goaltender" do
    get goaltender_url(@goaltender)
    assert_response :success
  end

  test "should get edit" do
    get edit_goaltender_url(@goaltender)
    assert_response :success
  end

  test "should update goaltender" do
    patch goaltender_url(@goaltender), params: { goaltender: { ga: @goaltender.ga, gaa: @goaltender.gaa, gp: @goaltender.gp, loses: @goaltender.loses, name: @goaltender.name, number: @goaltender.number, otl: @goaltender.otl, shutouts: @goaltender.shutouts, winpercent: @goaltender.winpercent, wins: @goaltender.wins } }
    assert_redirected_to goaltender_url(@goaltender)
  end

  test "should destroy goaltender" do
    assert_difference('Goaltender.count', -1) do
      delete goaltender_url(@goaltender)
    end

    assert_redirected_to goaltenders_url
  end
end
