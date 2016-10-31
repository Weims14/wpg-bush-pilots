require 'test_helper'

class AlumniGoaltendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumni_goaltender = alumni_goaltenders(:one)
  end

  test "should get index" do
    get alumni_goaltenders_url
    assert_response :success
  end

  test "should get new" do
    get new_alumni_goaltender_url
    assert_response :success
  end

  test "should create alumni_goaltender" do
    assert_difference('AlumniGoaltender.count') do
      post alumni_goaltenders_url, params: { alumni_goaltender: { ga: @alumni_goaltender.ga, gaa: @alumni_goaltender.gaa, gp: @alumni_goaltender.gp, loses: @alumni_goaltender.loses, name: @alumni_goaltender.name, number: @alumni_goaltender.number, otl: @alumni_goaltender.otl, season: @alumni_goaltender.season, shutouts: @alumni_goaltender.shutouts, winpercent: @alumni_goaltender.winpercent, wins: @alumni_goaltender.wins } }
    end

    assert_redirected_to alumni_goaltender_url(AlumniGoaltender.last)
  end

  test "should show alumni_goaltender" do
    get alumni_goaltender_url(@alumni_goaltender)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumni_goaltender_url(@alumni_goaltender)
    assert_response :success
  end

  test "should update alumni_goaltender" do
    patch alumni_goaltender_url(@alumni_goaltender), params: { alumni_goaltender: { ga: @alumni_goaltender.ga, gaa: @alumni_goaltender.gaa, gp: @alumni_goaltender.gp, loses: @alumni_goaltender.loses, name: @alumni_goaltender.name, number: @alumni_goaltender.number, otl: @alumni_goaltender.otl, season: @alumni_goaltender.season, shutouts: @alumni_goaltender.shutouts, winpercent: @alumni_goaltender.winpercent, wins: @alumni_goaltender.wins } }
    assert_redirected_to alumni_goaltender_url(@alumni_goaltender)
  end

  test "should destroy alumni_goaltender" do
    assert_difference('AlumniGoaltender.count', -1) do
      delete alumni_goaltender_url(@alumni_goaltender)
    end

    assert_redirected_to alumni_goaltenders_url
  end
end
