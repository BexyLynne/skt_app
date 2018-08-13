require 'test_helper'

class SpaceshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spaceship = spaceships(:one)
  end

  test "should get index" do
    get spaceships_url
    assert_response :success
  end

  test "should get new" do
    get new_spaceship_url
    assert_response :success
  end

  test "should create spaceship" do
    assert_difference('Spaceship.count') do
      post spaceships_url, params: { spaceship: { lasers: @spaceship.lasers, make: @spaceship.make, shields: @spaceship.shields, shipClass: @spaceship.shipClass } }
    end

    assert_redirected_to spaceship_url(Spaceship.last)
  end

  test "should show spaceship" do
    get spaceship_url(@spaceship)
    assert_response :success
  end

  test "should get edit" do
    get edit_spaceship_url(@spaceship)
    assert_response :success
  end

  test "should update spaceship" do
    patch spaceship_url(@spaceship), params: { spaceship: { lasers: @spaceship.lasers, make: @spaceship.make, shields: @spaceship.shields, shipClass: @spaceship.shipClass } }
    assert_redirected_to spaceship_url(@spaceship)
  end

  test "should destroy spaceship" do
    assert_difference('Spaceship.count', -1) do
      delete spaceship_url(@spaceship)
    end

    assert_redirected_to spaceships_url
  end
end
