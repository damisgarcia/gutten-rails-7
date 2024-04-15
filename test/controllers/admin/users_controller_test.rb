# frozen_string_literal: true

require "test_helper"

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get admin_users_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post admin_users_url, params: { user: { email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, phone: @user.phone, role: @user.role, status: @user.status } }
    end

    assert_redirected_to admin_user_url(User.last)
  end

  test "should show user" do
    get admin_user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch admin_user_url(@user), params: { user: { email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, phone: @user.phone, role: @user.role, status: @user.status } }
    assert_redirected_to admin_user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete admin_user_url(@user)
    end

    assert_redirected_to admin_users_url
  end
end
