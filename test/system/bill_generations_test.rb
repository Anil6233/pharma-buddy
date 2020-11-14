require "application_system_test_case"

class BillGenerationsTest < ApplicationSystemTestCase
  setup do
    @bill_generation = bill_generations(:one)
  end

  test "visiting the index" do
    visit bill_generations_url
    assert_selector "h1", text: "Bill Generations"
  end

  test "creating a Bill generation" do
    visit bill_generations_url
    click_on "New Bill Generation"

    fill_in "Amount", with: @bill_generation.amount
    fill_in "Discount", with: @bill_generation.discount
    fill_in "Items", with: @bill_generation.items
    fill_in "Sno", with: @bill_generation.sno
    fill_in "Total", with: @bill_generation.total
    click_on "Create Bill generation"

    assert_text "Bill generation was successfully created"
    click_on "Back"
  end

  test "updating a Bill generation" do
    visit bill_generations_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @bill_generation.amount
    fill_in "Discount", with: @bill_generation.discount
    fill_in "Items", with: @bill_generation.items
    fill_in "Sno", with: @bill_generation.sno
    fill_in "Total", with: @bill_generation.total
    click_on "Update Bill generation"

    assert_text "Bill generation was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill generation" do
    visit bill_generations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill generation was successfully destroyed"
  end
end
