require 'test_helper'

class AbTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ab_team = ab_teams(:one)
  end

  test "should get index" do
    get ab_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_ab_team_url
    assert_response :success
  end

  test "should create ab_team" do
    assert_difference('AbTeam.count') do
      post ab_teams_url, params: { ab_team: { skater_id: @ab_team.skater_id, team: @ab_team.team, year: @ab_team.year } }
    end

    assert_redirected_to ab_team_url(AbTeam.last)
  end

  test "should show ab_team" do
    get ab_team_url(@ab_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_ab_team_url(@ab_team)
    assert_response :success
  end

  test "should update ab_team" do
    patch ab_team_url(@ab_team), params: { ab_team: { skater_id: @ab_team.skater_id, team: @ab_team.team, year: @ab_team.year } }
    assert_redirected_to ab_team_url(@ab_team)
  end

  test "should destroy ab_team" do
    assert_difference('AbTeam.count', -1) do
      delete ab_team_url(@ab_team)
    end

    assert_redirected_to ab_teams_url
  end
end
