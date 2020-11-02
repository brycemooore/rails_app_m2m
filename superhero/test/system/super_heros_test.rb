require "application_system_test_case"

class SuperHerosTest < ApplicationSystemTestCase
  setup do
    @super_hero = super_heros(:one)
  end

  test "visiting the index" do
    visit super_heros_url
    assert_selector "h1", text: "Super Heros"
  end

  test "creating a Super hero" do
    visit super_heros_url
    click_on "New Super Hero"

    click_on "Create Super hero"

    assert_text "Super hero was successfully created"
    click_on "Back"
  end

  test "updating a Super hero" do
    visit super_heros_url
    click_on "Edit", match: :first

    click_on "Update Super hero"

    assert_text "Super hero was successfully updated"
    click_on "Back"
  end

  test "destroying a Super hero" do
    visit super_heros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Super hero was successfully destroyed"
  end
end
