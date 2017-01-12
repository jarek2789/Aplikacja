require 'test_helper'

class PlytaControllerTest < ActionController::TestCase
  setup do
    @plytum = plyta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plyta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plytum" do
    assert_difference('Plytum.count') do
      post :create, plytum: { gatunek: @plytum.gatunek, nazwa: @plytum.nazwa, rodzaj: @plytum.rodzaj }
    end

    assert_redirected_to plytum_path(assigns(:plytum))
  end

  test "should show plytum" do
    get :show, id: @plytum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plytum
    assert_response :success
  end

  test "should update plytum" do
    patch :update, id: @plytum, plytum: { gatunek: @plytum.gatunek, nazwa: @plytum.nazwa, rodzaj: @plytum.rodzaj }
    assert_redirected_to plytum_path(assigns(:plytum))
  end

  test "should destroy plytum" do
    assert_difference('Plytum.count', -1) do
      delete :destroy, id: @plytum
    end

    assert_redirected_to plyta_path
  end
end
