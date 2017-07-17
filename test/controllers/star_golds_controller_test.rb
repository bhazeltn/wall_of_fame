require 'test_helper'

class StarGoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star_gold = star_golds(:one)
  end

  test "should get index" do
    get star_golds_url
    assert_response :success
  end

  test "should get new" do
    get new_star_gold_url
    assert_response :success
  end

  test "should create star_gold" do
    assert_difference('StarGold.count') do
      post star_golds_url, params: { star_gold: { competition_id: @star_gold.competition_id, element: @star_gold.element, skater_id: @star_gold.skater_id, star_level_id: @star_gold.star_level_id, year: @star_gold.year } }
    end

    assert_redirected_to star_gold_url(StarGold.last)
  end

  test "should show star_gold" do
    get star_gold_url(@star_gold)
    assert_response :success
  end

  test "should get edit" do
    get edit_star_gold_url(@star_gold)
    assert_response :success
  end

  test "should update star_gold" do
    patch star_gold_url(@star_gold), params: { star_gold: { competition_id: @star_gold.competition_id, element: @star_gold.element, skater_id: @star_gold.skater_id, star_level_id: @star_gold.star_level_id, year: @star_gold.year } }
    assert_redirected_to star_gold_url(@star_gold)
  end

  test "should destroy star_gold" do
    assert_difference('StarGold.count', -1) do
      delete star_gold_url(@star_gold)
    end

    assert_redirected_to star_golds_url
  end
end
