require 'test_helper'

class WypozyczeniesControllerTest < ActionController::TestCase
  setup do
    @wypozyczeny = wypozyczenies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wypozyczenies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wypozyczeny" do
    assert_difference('Wypozyczenie.count') do
      post :create, wypozyczeny: { Album: @wypozyczeny.Album, Kliient: @wypozyczeny.Kliient }
    end

    assert_redirected_to wypozyczeny_path(assigns(:wypozyczeny))
  end

  test "should show wypozyczeny" do
    get :show, id: @wypozyczeny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wypozyczeny
    assert_response :success
  end

  test "should update wypozyczeny" do
    patch :update, id: @wypozyczeny, wypozyczeny: { Album: @wypozyczeny.Album, Kliient: @wypozyczeny.Kliient }
    assert_redirected_to wypozyczeny_path(assigns(:wypozyczeny))
  end

  test "should destroy wypozyczeny" do
    assert_difference('Wypozyczenie.count', -1) do
      delete :destroy, id: @wypozyczeny
    end

    assert_redirected_to wypozyczenies_path
  end
end
