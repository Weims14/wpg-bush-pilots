require 'test_helper'

class TeamRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_record = team_records(:one)
  end

  test "should get index" do
    get team_records_url
    assert_response :success
  end

  test "should get new" do
    get new_team_record_url
    assert_response :success
  end

  test "should create team_record" do
    assert_difference('TeamRecord.count') do
      post team_records_url, params: { team_record: { season: @team_record.season, season_record: @team_record.season_record } }
    end

    assert_redirected_to team_record_url(TeamRecord.last)
  end

  test "should show team_record" do
    get team_record_url(@team_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_record_url(@team_record)
    assert_response :success
  end

  test "should update team_record" do
    patch team_record_url(@team_record), params: { team_record: { season: @team_record.season, season_record: @team_record.season_record } }
    assert_redirected_to team_record_url(@team_record)
  end

  test "should destroy team_record" do
    assert_difference('TeamRecord.count', -1) do
      delete team_record_url(@team_record)
    end

    assert_redirected_to team_records_url
  end
end
