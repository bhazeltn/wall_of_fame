require 'test_helper'

class ScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score = scores(:one)
  end

  test "should get index" do
    get scores_url
    assert_response :success
  end

  test "should get new" do
    get new_score_url
    assert_response :success
  end

  test "should create score" do
    assert_difference('Score.count') do
      post scores_url, params: { score: { competition: @score.competition, event_id: @score.event_id, score: @score.score, score_type_id: @score.score_type_id, segment_id: @score.segment_id, skater1: @score.skater1, skater2: @score.skater2, skater3: @score.skater3, skater4: @score.skater4, team_name: @score.team_name, year: @score.year } }
    end

    assert_redirected_to score_url(Score.last)
  end

  test "should show score" do
    get score_url(@score)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_url(@score)
    assert_response :success
  end

  test "should update score" do
    patch score_url(@score), params: { score: { competition: @score.competition, event_id: @score.event_id, score: @score.score, score_type_id: @score.score_type_id, segment_id: @score.segment_id, skater1: @score.skater1, skater2: @score.skater2, skater3: @score.skater3, skater4: @score.skater4, team_name: @score.team_name, year: @score.year } }
    assert_redirected_to score_url(@score)
  end

  test "should destroy score" do
    assert_difference('Score.count', -1) do
      delete score_url(@score)
    end

    assert_redirected_to scores_url
  end
end
