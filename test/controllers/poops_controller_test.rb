require 'test_helper'

class PoopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poop = poops(:one)
  end

  test "should get index" do
    get poops_url
    assert_response :success
  end

  test "should get new" do
    get new_poop_url
    assert_response :success
  end

  test "should create poop" do
    assert_difference('Poop.count') do
      post poops_url, params: { poop: { date: @poop.date, dinner_id: @poop.dinner_id, grade: @poop.grade, hour: @poop.hour, lunch_id: @poop.lunch_id, pooped: @poop.pooped, snack_id: @poop.snack_id } }
    end

    assert_redirected_to poop_url(Poop.last)
  end

  test "should show poop" do
    get poop_url(@poop)
    assert_response :success
  end

  test "should get edit" do
    get edit_poop_url(@poop)
    assert_response :success
  end

  test "should update poop" do
    patch poop_url(@poop), params: { poop: { date: @poop.date, dinner_id: @poop.dinner_id, grade: @poop.grade, hour: @poop.hour, lunch_id: @poop.lunch_id, pooped: @poop.pooped, snack_id: @poop.snack_id } }
    assert_redirected_to poop_url(@poop)
  end

  test "should destroy poop" do
    assert_difference('Poop.count', -1) do
      delete poop_url(@poop)
    end

    assert_redirected_to poops_url
  end
end
