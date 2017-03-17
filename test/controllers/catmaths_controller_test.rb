require 'test_helper'

class CatmathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catmath = catmaths(:one)
  end

  test "should get index" do
    get catmaths_url
    assert_response :success
  end

  test "should get new" do
    get new_catmath_url
    assert_response :success
  end

  test "should create catmath" do
    assert_difference('Catmath.count') do
      post catmaths_url, params: { catmath: { question: @catmath.question, topic: @catmath.topic } }
    end

    assert_redirected_to catmath_url(Catmath.last)
  end

  test "should show catmath" do
    get catmath_url(@catmath)
    assert_response :success
  end

  test "should get edit" do
    get edit_catmath_url(@catmath)
    assert_response :success
  end

  test "should update catmath" do
    patch catmath_url(@catmath), params: { catmath: { question: @catmath.question, topic: @catmath.topic } }
    assert_redirected_to catmath_url(@catmath)
  end

  test "should destroy catmath" do
    assert_difference('Catmath.count', -1) do
      delete catmath_url(@catmath)
    end

    assert_redirected_to catmaths_url
  end
end
