require 'test_helper'

class TodolistsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get todolists_add_url
    assert_response :success
  end

  test "should get index" do
    get todolists_index_url
    assert_response :success
  end

  test "should get show" do
    get todolists_show_url
    assert_response :success
  end

  test "should get delete" do
    get todolists_delete_url
    assert_response :success
  end

end
