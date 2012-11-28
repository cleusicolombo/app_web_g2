require 'test_helper'

class UsersExchangesControllerTest < ActionController::TestCase
  setup do
    @users_exchange = users_exchanges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_exchange" do
    assert_difference('UsersExchange.count') do
      post :create, users_exchange: @users_exchange.attributes
    end

    assert_redirected_to users_exchange_path(assigns(:users_exchange))
  end

  test "should show users_exchange" do
    get :show, id: @users_exchange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_exchange
    assert_response :success
  end

  test "should update users_exchange" do
    put :update, id: @users_exchange, users_exchange: @users_exchange.attributes
    assert_redirected_to users_exchange_path(assigns(:users_exchange))
  end

  test "should destroy users_exchange" do
    assert_difference('UsersExchange.count', -1) do
      delete :destroy, id: @users_exchange
    end

    assert_redirected_to users_exchanges_path
  end
end
