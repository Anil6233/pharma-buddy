require 'test_helper'

class BillGenerationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_generation = bill_generations(:one)
  end

  test "should get index" do
    get bill_generations_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_generation_url
    assert_response :success
  end

  test "should create bill_generation" do
    assert_difference('BillGeneration.count') do
      post bill_generations_url, params: { bill_generation: { amount: @bill_generation.amount, discount: @bill_generation.discount, items: @bill_generation.items, sno: @bill_generation.sno, total: @bill_generation.total } }
    end

    assert_redirected_to bill_generation_url(BillGeneration.last)
  end

  test "should show bill_generation" do
    get bill_generation_url(@bill_generation)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_generation_url(@bill_generation)
    assert_response :success
  end

  test "should update bill_generation" do
    patch bill_generation_url(@bill_generation), params: { bill_generation: { amount: @bill_generation.amount, discount: @bill_generation.discount, items: @bill_generation.items, sno: @bill_generation.sno, total: @bill_generation.total } }
    assert_redirected_to bill_generation_url(@bill_generation)
  end

  test "should destroy bill_generation" do
    assert_difference('BillGeneration.count', -1) do
      delete bill_generation_url(@bill_generation)
    end

    assert_redirected_to bill_generations_url
  end
end
