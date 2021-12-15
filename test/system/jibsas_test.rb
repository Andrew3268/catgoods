require "application_system_test_case"

class JibsasTest < ApplicationSystemTestCase
  setup do
    @jibsa = jibsas(:one)
  end

  test "visiting the index" do
    visit jibsas_url
    assert_selector "h1", text: "Jibsas"
  end

  test "creating a Jibsa" do
    visit jibsas_url
    click_on "New Jibsa"

    fill_in "Body", with: @jibsa.body
    fill_in "Title", with: @jibsa.title
    click_on "Create Jibsa"

    assert_text "Jibsa was successfully created"
    click_on "Back"
  end

  test "updating a Jibsa" do
    visit jibsas_url
    click_on "Edit", match: :first

    fill_in "Body", with: @jibsa.body
    fill_in "Title", with: @jibsa.title
    click_on "Update Jibsa"

    assert_text "Jibsa was successfully updated"
    click_on "Back"
  end

  test "destroying a Jibsa" do
    visit jibsas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jibsa was successfully destroyed"
  end
end
