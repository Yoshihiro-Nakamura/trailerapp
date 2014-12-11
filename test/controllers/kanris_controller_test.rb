require 'test_helper'

class KanrisControllerTest < ActionController::TestCase
  setup do
    @kanri = kanris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kanris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kanri" do
    assert_difference('Kanri.count') do
      post :create, kanri: {  }
    end

    assert_redirected_to kanri_path(assigns(:kanri))
  end

  test "should show kanri" do
    get :show, id: @kanri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kanri
    assert_response :success
  end

  test "should update kanri" do
    patch :update, id: @kanri, kanri: {  }
    assert_redirected_to kanri_path(assigns(:kanri))
  end

  test "should destroy kanri" do
    assert_difference('Kanri.count', -1) do
      delete :destroy, id: @kanri
    end

    assert_redirected_to kanris_path
  end
end
