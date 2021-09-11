require "test_helper"

class Game01sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game01 = game01s(:one)
  end

  test "should get index" do
    get game01s_url
    assert_response :success
  end

  test "should get new" do
    get new_game01_url
    assert_response :success
  end

  test "should create game01" do
    assert_difference('Game01.count') do
      post game01s_url, params: { game01: { name: @game01.name, rule_text: @game01.rule_text } }
    end

    assert_redirected_to game01_url(Game01.last)
  end

  test "should show game01" do
    get game01_url(@game01)
    assert_response :success
  end

  test "should get edit" do
    get edit_game01_url(@game01)
    assert_response :success
  end

  test "should update game01" do
    patch game01_url(@game01), params: { game01: { name: @game01.name, rule_text: @game01.rule_text } }
    assert_redirected_to game01_url(@game01)
  end

  test "should destroy game01" do
    assert_difference('Game01.count', -1) do
      delete game01_url(@game01)
    end

    assert_redirected_to game01s_url
  end
end
