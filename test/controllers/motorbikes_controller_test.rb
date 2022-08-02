require "test_helper"

class MotorbikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motorbike = motorbikes(:one)
  end

  test "should get index" do
    get motorbikes_url
    assert_response :success
  end

  test "should get new" do
    get new_motorbike_url
    assert_response :success
  end

  test "should create motorbike" do
    assert_difference("Motorbike.count") do
      post motorbikes_url, params: { motorbike: { model: @motorbike.model, name: @motorbike.name, year: @motorbike.year } }
    end

    assert_redirected_to motorbike_url(Motorbike.last)
  end

  test "should show motorbike" do
    get motorbike_url(@motorbike)
    assert_response :success
  end

  test "should get edit" do
    get edit_motorbike_url(@motorbike)
    assert_response :success
  end

  test "should update motorbike" do
    patch motorbike_url(@motorbike), params: { motorbike: { model: @motorbike.model, name: @motorbike.name, year: @motorbike.year } }
    assert_redirected_to motorbike_url(@motorbike)
  end

  test "should destroy motorbike" do
    assert_difference("Motorbike.count", -1) do
      delete motorbike_url(@motorbike)
    end

    assert_redirected_to motorbikes_url
  end
end
