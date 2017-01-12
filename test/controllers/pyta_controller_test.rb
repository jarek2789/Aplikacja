require 'test_helper'

class PytaControllerTest < ActionController::TestCase
  setup do
    @pytum = pyta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pyta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pytum" do
    assert_difference('Pytum.count') do
      post :create, pytum: { gatunek: @pytum.gatunek, nazwa: @pytum.nazwa, rodzaj: @pytum.rodzaj }
    end

    assert_redirected_to pytum_path(assigns(:pytum))
  end

  test "should show pytum" do
    get :show, id: @pytum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pytum
    assert_response :success
  end

  test "should update pytum" do
    patch :update, id: @pytum, pytum: { gatunek: @pytum.gatunek, nazwa: @pytum.nazwa, rodzaj: @pytum.rodzaj }
    assert_redirected_to pytum_path(assigns(:pytum))
  end

  test "should destroy pytum" do
    assert_difference('Pytum.count', -1) do
      delete :destroy, id: @pytum
    end

    assert_redirected_to pyta_path
  end
end
