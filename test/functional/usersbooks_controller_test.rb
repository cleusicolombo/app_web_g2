require 'test_helper'

class UsersbooksControllerTest < ActionController::TestCase
  setup do
    @usersbook = usersbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usersbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usersbook" do
    assert_difference('Usersbook.count') do
      post :create, usersbook: @usersbook.attributes
    end

    assert_redirected_to usersbook_path(assigns(:usersbook))
  end

  test "should show usersbook" do
    get :show, id: @usersbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usersbook
    assert_response :success
  end

  test "should update usersbook" do
    put :update, id: @usersbook, usersbook: @usersbook.attributes
    assert_redirected_to usersbook_path(assigns(:usersbook))
  end

  test "should destroy usersbook" do
    assert_difference('Usersbook.count', -1) do
      delete :destroy, id: @usersbook
    end

    assert_redirected_to usersbooks_path
  end
end
