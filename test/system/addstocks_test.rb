require "application_system_test_case"

class AddstocksTest < ApplicationSystemTestCase
  setup do
    @addstock = addstocks(:one)
  end

  test "visiting the index" do
    visit addstocks_url
    assert_selector "h1", text: "Addstocks"
  end

  test "creating a Addstock" do
    visit addstocks_url
    click_on "New Addstock"

    fill_in "Cost", with: @addstock.cost
    fill_in "Expiry date", with: @addstock.expiry_date
    fill_in "Manufacturer date", with: @addstock.manufacturer_date
    fill_in "Name", with: @addstock.name
    fill_in "Quantity", with: @addstock.quantity
    click_on "Create Addstock"

    assert_text "Addstock was successfully created"
    click_on "Back"
  end

  test "updating a Addstock" do
    visit addstocks_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @addstock.cost
    fill_in "Expiry date", with: @addstock.expiry_date
    fill_in "Manufacturer date", with: @addstock.manufacturer_date
    fill_in "Name", with: @addstock.name
    fill_in "Quantity", with: @addstock.quantity
    click_on "Update Addstock"

    assert_text "Addstock was successfully updated"
    click_on "Back"
  end

  test "destroying a Addstock" do
    visit addstocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Addstock was successfully destroyed"
  end
end
