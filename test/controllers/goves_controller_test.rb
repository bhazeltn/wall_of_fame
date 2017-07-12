require 'test_helper'

class GovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gofe = goves(:one)
  end

  test "should get index" do
    get goves_url
    assert_response :success
  end

  test "should get new" do
    get new_gofe_url
    assert_response :success
  end

  test "should create gofe" do
    assert_difference('Gofe.count') do
      post goves_url, params: { gofe: { competition: @gofe.competition, element: @gofe.element, event_id: @gofe.event_id, grade: @gofe.grade, level_id: @gofe.level_id, segment_id: @gofe.segment_id, skater1: @gofe.skater1, skater2: @gofe.skater2, year: @gofe.year } }
    end

    assert_redirected_to gofe_url(Gofe.last)
  end

  test "should show gofe" do
    get gofe_url(@gofe)
    assert_response :success
  end

  test "should get edit" do
    get edit_gofe_url(@gofe)
    assert_response :success
  end

  test "should update gofe" do
    patch gofe_url(@gofe), params: { gofe: { competition: @gofe.competition, element: @gofe.element, event_id: @gofe.event_id, grade: @gofe.grade, level_id: @gofe.level_id, segment_id: @gofe.segment_id, skater1: @gofe.skater1, skater2: @gofe.skater2, year: @gofe.year } }
    assert_redirected_to gofe_url(@gofe)
  end

  test "should destroy gofe" do
    assert_difference('Gofe.count', -1) do
      delete gofe_url(@gofe)
    end

    assert_redirected_to goves_url
  end
end
