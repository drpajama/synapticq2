require 'test_helper'

class ChoiceItemsControllerTest < ActionController::TestCase
  setup do
    @choice_item = choice_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choice_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choice_item" do
    assert_difference('ChoiceItem.count') do
      post :create, choice_item: { article_id: @choice_item.article_id, is_correct: @choice_item.is_correct, item: @choice_item.item }
    end

    assert_redirected_to choice_item_path(assigns(:choice_item))
  end

  test "should show choice_item" do
    get :show, id: @choice_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choice_item
    assert_response :success
  end

  test "should update choice_item" do
    patch :update, id: @choice_item, choice_item: { article_id: @choice_item.article_id, is_correct: @choice_item.is_correct, item: @choice_item.item }
    assert_redirected_to choice_item_path(assigns(:choice_item))
  end

  test "should destroy choice_item" do
    assert_difference('ChoiceItem.count', -1) do
      delete :destroy, id: @choice_item
    end

    assert_redirected_to choice_items_path
  end
end
