require 'test_helper'

class AddstocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addstock = addstocks(:one)
  end

  test "should get index" do
    get addstocks_url
    assert_response :success
  end

  test "should get new" do
    get new_addstock_url
    assert_response :success
  end

  test "should create addstock" do
    assert_difference('Addstock.count') do
      post addstocks_url, params: { addstock: { cost: @addstock.cost, expiry_date: @addstock.expiry_date, manufacturer_date: @addstock.manufacturer_date, name: @addstock.name, quantity: @addstock.quantity } }
    end

    assert_redirected_to addstock_url(Addstock.last)
  end

  test "should show addstock" do
    get addstock_url(@addstock)
    assert_response :success
  end

  test "should get edit" do
    get edit_addstock_url(@addstock)
    assert_response :success
  end

  test "should update addstock" do
    patch addstock_url(@addstock), params: { addstock: { cost: @addstock.cost, expiry_date: @addstock.expiry_date, manufacturer_date: @addstock.manufacturer_date, name: @addstock.name, quantity: @addstock.quantity } }
    assert_redirected_to addstock_url(@addstock)
  end

  test "should destroy addstock" do
    assert_difference('Addstock.count', -1) do
      delete addstock_url(@addstock)
    end

    assert_redirected_to addstocks_url
  end
end
