require 'test_helper'

class ReplyListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reply_lists_index_url
    assert_response :success
  end

  test "should get add" do
    get reply_lists_add_url
    assert_response :success
  end

  test "should get edit" do
    get reply_lists_edit_url
    assert_response :success
  end

  test "should get detail" do
    get reply_lists_detail_url
    assert_response :success
  end

end
