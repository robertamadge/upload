require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Item description", with: @item.item_description
    fill_in "Item price", with: @item.item_price
    fill_in "Merchant address", with: @item.merchant_address
    fill_in "Merchant name", with: @item.merchant_name
    fill_in "Purchase count", with: @item.purchase_count
    fill_in "Purchaser name", with: @item.purchaser_name
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Item description", with: @item.item_description
    fill_in "Item price", with: @item.item_price
    fill_in "Merchant address", with: @item.merchant_address
    fill_in "Merchant name", with: @item.merchant_name
    fill_in "Purchase count", with: @item.purchase_count
    fill_in "Purchaser name", with: @item.purchaser_name
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
