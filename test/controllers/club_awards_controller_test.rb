require 'test_helper'

class ClubAwardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_award = club_awards(:one)
  end

  test "should get index" do
    get club_awards_url
    assert_response :success
  end

  test "should get new" do
    get new_club_award_url
    assert_response :success
  end

  test "should create club_award" do
    assert_difference('ClubAward.count') do
      post club_awards_url, params: { club_award: { award_id: @club_award.award_id, skater_id: @club_award.skater_id, year: @club_award.year } }
    end

    assert_redirected_to club_award_url(ClubAward.last)
  end

  test "should show club_award" do
    get club_award_url(@club_award)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_award_url(@club_award)
    assert_response :success
  end

  test "should update club_award" do
    patch club_award_url(@club_award), params: { club_award: { award_id: @club_award.award_id, skater_id: @club_award.skater_id, year: @club_award.year } }
    assert_redirected_to club_award_url(@club_award)
  end

  test "should destroy club_award" do
    assert_difference('ClubAward.count', -1) do
      delete club_award_url(@club_award)
    end

    assert_redirected_to club_awards_url
  end
end
