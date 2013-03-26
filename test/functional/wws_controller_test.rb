require 'test_helper'

class WwsControllerTest < ActionController::TestCase
  setup do
    @ww = wws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ww" do
    assert_difference('Ww.count') do
      post :create, ww: { disc: @ww.disc, event_id: @ww.event_id, image: @ww.image, number: @ww.number }
    end

    assert_redirected_to ww_path(assigns(:ww))
  end

  test "should show ww" do
    get :show, id: @ww
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ww
    assert_response :success
  end

  test "should update ww" do
    put :update, id: @ww, ww: { disc: @ww.disc, event_id: @ww.event_id, image: @ww.image, number: @ww.number }
    assert_redirected_to ww_path(assigns(:ww))
  end

  test "should destroy ww" do
    assert_difference('Ww.count', -1) do
      delete :destroy, id: @ww
    end

    assert_redirected_to wws_path
  end
end
