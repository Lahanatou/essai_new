require 'test_helper'

class OrphansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orphan = orphans(:one)
  end

  test "should get index" do
    get orphans_url
    assert_response :success
  end

  test "should get new" do
    get new_orphan_url
    assert_response :success
  end

  test "should create orphan" do
    assert_difference('Orphan.count') do
      post orphans_url, params: { orphan: { age: @orphan.age, description: @orphan.description, image: @orphan.image, name: @orphan.name, sex: @orphan.sex } }
    end

    assert_redirected_to orphan_url(Orphan.last)
  end

  test "should show orphan" do
    get orphan_url(@orphan)
    assert_response :success
  end

  test "should get edit" do
    get edit_orphan_url(@orphan)
    assert_response :success
  end

  test "should update orphan" do
    patch orphan_url(@orphan), params: { orphan: { age: @orphan.age, description: @orphan.description, image: @orphan.image, name: @orphan.name, sex: @orphan.sex } }
    assert_redirected_to orphan_url(@orphan)
  end

  test "should destroy orphan" do
    assert_difference('Orphan.count', -1) do
      delete orphan_url(@orphan)
    end

    assert_redirected_to orphans_url
  end
end
