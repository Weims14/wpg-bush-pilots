require 'test_helper'

class SkatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skater = skaters(:one)
  end

  test "should get index" do
    get skaters_url
    assert_response :success
  end

  test "should get new" do
    get new_skater_url
    assert_response :success
  end

  test "should create skater" do
    assert_difference('Skater.count') do
      post skaters_url, params: { skater: { assists: @skater.assists, goals: @skater.goals, gp: @skater.gp, name: @skater.name, number: @skater.number, pim: @skater.pim, points: @skater.points, pos: @skater.pos } }
    end

    assert_redirected_to skater_url(Skater.last)
  end

  test "should show skater" do
    get skater_url(@skater)
    assert_response :success
  end

  test "should get edit" do
    get edit_skater_url(@skater)
    assert_response :success
  end

  test "should update skater" do
    patch skater_url(@skater), params: { skater: { assists: @skater.assists, goals: @skater.goals, gp: @skater.gp, name: @skater.name, number: @skater.number, pim: @skater.pim, points: @skater.points, pos: @skater.pos } }
    assert_redirected_to skater_url(@skater)
  end

  test "should destroy skater" do
    assert_difference('Skater.count', -1) do
      delete skater_url(@skater)
    end

    assert_redirected_to skaters_url
  end
end
