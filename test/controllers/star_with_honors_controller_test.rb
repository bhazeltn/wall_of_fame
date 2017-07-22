require 'test_helper'

class StarWithHonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star_with_honor = star_with_honors(:one)
  end

  test "should get index" do
    get star_with_honors_url
    assert_response :success
  end

  test "should get new" do
    get new_star_with_honor_url
    assert_response :success
  end

  test "should create star_with_honor" do
    assert_difference('StarWithHonor.count') do
      post star_with_honors_url, params: { star_with_honor: { date: @star_with_honor.date, skater_id_id: @star_with_honor.skater_id_id, star_test_id: @star_with_honor.star_test_id, year: @star_with_honor.year } }
    end

    assert_redirected_to star_with_honor_url(StarWithHonor.last)
  end

  test "should show star_with_honor" do
    get star_with_honor_url(@star_with_honor)
    assert_response :success
  end

  test "should get edit" do
    get edit_star_with_honor_url(@star_with_honor)
    assert_response :success
  end

  test "should update star_with_honor" do
    patch star_with_honor_url(@star_with_honor), params: { star_with_honor: { date: @star_with_honor.date, skater_id_id: @star_with_honor.skater_id_id, star_test_id: @star_with_honor.star_test_id, year: @star_with_honor.year } }
    assert_redirected_to star_with_honor_url(@star_with_honor)
  end

  test "should destroy star_with_honor" do
    assert_difference('StarWithHonor.count', -1) do
      delete star_with_honor_url(@star_with_honor)
    end

    assert_redirected_to star_with_honors_url
  end
end
