require 'test_helper'

class ProductCartControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get product_cart_create_url
    assert_response :success
  end

  test "should get update" do
    get product_cart_update_url
    assert_response :success
  end

  test "should get destroy" do
    get product_cart_destroy_url
    assert_response :success
  end

end
