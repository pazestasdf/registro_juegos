require "application_system_test_case"

class Game01sTest < ApplicationSystemTestCase
  setup do
    @game01 = game01s(:one)
  end

  test "visiting the index" do
    visit game01s_url
    assert_selector "h1", text: "Game01s"
  end

  test "creating a Game01" do
    visit game01s_url
    click_on "New Game01"

    fill_in "Name", with: @game01.name
    fill_in "Rule text", with: @game01.rule_text
    click_on "Create Game01"

    assert_text "Game01 was successfully created"
    click_on "Back"
  end

  test "updating a Game01" do
    visit game01s_url
    click_on "Edit", match: :first

    fill_in "Name", with: @game01.name
    fill_in "Rule text", with: @game01.rule_text
    click_on "Update Game01"

    assert_text "Game01 was successfully updated"
    click_on "Back"
  end

  test "destroying a Game01" do
    visit game01s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game01 was successfully destroyed"
  end
end
