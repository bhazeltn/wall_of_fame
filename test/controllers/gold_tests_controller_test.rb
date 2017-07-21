require 'test_helper'

class GoldTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gold_test = gold_tests(:one)
  end

  test "should get index" do
    get gold_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_gold_test_url
    assert_response :success
  end

  test "should create gold_test" do
    assert_difference('GoldTest.count') do
      post gold_tests_url, params: { gold_test: { skater_id: @gold_test.skater_id, testLevel: @gold_test.testLevel, year: @gold_test.year } }
    end

    assert_redirected_to gold_test_url(GoldTest.last)
  end

  test "should show gold_test" do
    get gold_test_url(@gold_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_gold_test_url(@gold_test)
    assert_response :success
  end

  test "should update gold_test" do
    patch gold_test_url(@gold_test), params: { gold_test: { skater_id: @gold_test.skater_id, testLevel: @gold_test.testLevel, year: @gold_test.year } }
    assert_redirected_to gold_test_url(@gold_test)
  end

  test "should destroy gold_test" do
    assert_difference('GoldTest.count', -1) do
      delete gold_test_url(@gold_test)
    end

    assert_redirected_to gold_tests_url
  end
end
