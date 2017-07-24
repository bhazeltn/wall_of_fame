require 'test_helper'

class ExternalAwardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external_award = external_awards(:one)
  end

  test "should get index" do
    get external_awards_url
    assert_response :success
  end

  test "should get new" do
    get new_external_award_url
    assert_response :success
  end

  test "should create external_award" do
    assert_difference('ExternalAward.count') do
      post external_awards_url, params: { external_award: { award: @external_award.award, skater_id: @external_award.skater_id, web_site: @external_award.web_site, year: @external_award.year } }
    end

    assert_redirected_to external_award_url(ExternalAward.last)
  end

  test "should show external_award" do
    get external_award_url(@external_award)
    assert_response :success
  end

  test "should get edit" do
    get edit_external_award_url(@external_award)
    assert_response :success
  end

  test "should update external_award" do
    patch external_award_url(@external_award), params: { external_award: { award: @external_award.award, skater_id: @external_award.skater_id, web_site: @external_award.web_site, year: @external_award.year } }
    assert_redirected_to external_award_url(@external_award)
  end

  test "should destroy external_award" do
    assert_difference('ExternalAward.count', -1) do
      delete external_award_url(@external_award)
    end

    assert_redirected_to external_awards_url
  end
end
