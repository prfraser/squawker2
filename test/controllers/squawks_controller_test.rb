require 'test_helper'

class SquawksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @squawk = squawks(:one)
  end

  test "should get index" do
    get squawks_url
    assert_response :success
  end

  test "should get new" do
    get new_squawk_url
    assert_response :success
  end

  test "should create squawk" do
    assert_difference('Squawk.count') do
      post squawks_url, params: { squawk: { content: @squawk.content, user_id: @squawk.user_id } }
    end

    assert_redirected_to squawk_url(Squawk.last)
  end

  test "should show squawk" do
    get squawk_url(@squawk)
    assert_response :success
  end

  test "should get edit" do
    get edit_squawk_url(@squawk)
    assert_response :success
  end

  test "should update squawk" do
    patch squawk_url(@squawk), params: { squawk: { content: @squawk.content, user_id: @squawk.user_id } }
    assert_redirected_to squawk_url(@squawk)
  end

  test "should destroy squawk" do
    assert_difference('Squawk.count', -1) do
      delete squawk_url(@squawk)
    end

    assert_redirected_to squawks_url
  end
end
