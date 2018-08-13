require "application_system_test_case"

class SpaceshipsTest < ApplicationSystemTestCase
  setup do
    @spaceship = spaceships(:one)
  end

  test "visiting the index" do
    visit spaceships_url
    assert_selector "h1", text: "Spaceships"
  end

  test "creating a Spaceship" do
    visit spaceships_url
    click_on "New Spaceship"

    fill_in "Lasers", with: @spaceship.lasers
    fill_in "Make", with: @spaceship.make
    fill_in "Shields", with: @spaceship.shields
    fill_in "Shipclass", with: @spaceship.shipClass
    click_on "Create Spaceship"

    assert_text "Spaceship was successfully created"
    click_on "Back"
  end

  test "updating a Spaceship" do
    visit spaceships_url
    click_on "Edit", match: :first

    fill_in "Lasers", with: @spaceship.lasers
    fill_in "Make", with: @spaceship.make
    fill_in "Shields", with: @spaceship.shields
    fill_in "Shipclass", with: @spaceship.shipClass
    click_on "Update Spaceship"

    assert_text "Spaceship was successfully updated"
    click_on "Back"
  end

  test "destroying a Spaceship" do
    visit spaceships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spaceship was successfully destroyed"
  end
end
