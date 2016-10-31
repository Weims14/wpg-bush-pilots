require 'test_helper'

class AlumniSkatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumni_skater = alumni_skaters(:one)
  end

  test "should get index" do
    get alumni_skaters_url
    assert_response :success
  end

  test "should get new" do
    get new_alumni_skater_url
    assert_response :success
  end

  test "should create alumni_skater" do
    assert_difference('AlumniSkater.count') do
      post alumni_skaters_url, params: { alumni_skater: { assists: @alumni_skater.assists, goals: @alumni_skater.goals, gp: @alumni_skater.gp, name: @alumni_skater.name, number: @alumni_skater.number, pim: @alumni_skater.pim, points: @alumni_skater.points, position: @alumni_skater.position, seasons: @alumni_skater.seasons } }
    end

    assert_redirected_to alumni_skater_url(AlumniSkater.last)
  end

  test "should show alumni_skater" do
    get alumni_skater_url(@alumni_skater)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumni_skater_url(@alumni_skater)
    assert_response :success
  end

  test "should update alumni_skater" do
    patch alumni_skater_url(@alumni_skater), params: { alumni_skater: { assists: @alumni_skater.assists, goals: @alumni_skater.goals, gp: @alumni_skater.gp, name: @alumni_skater.name, number: @alumni_skater.number, pim: @alumni_skater.pim, points: @alumni_skater.points, position: @alumni_skater.position, seasons: @alumni_skater.seasons } }
    assert_redirected_to alumni_skater_url(@alumni_skater)
  end

  test "should destroy alumni_skater" do
    assert_difference('AlumniSkater.count', -1) do
      delete alumni_skater_url(@alumni_skater)
    end

    assert_redirected_to alumni_skaters_url
  end
end
