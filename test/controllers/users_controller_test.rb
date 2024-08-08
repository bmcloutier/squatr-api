require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # Assuming you have a fixture for users
  end

  test "should get index" do
    get users_path
    assert_response :success
  end

  test "should show user" do
    get users_path(@user)
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_path, params: { name: "New User", email: "newuser@example.com", password: "password", password_confirmation: "password", image: "image_url" }
    end

    assert_response :success
  end

  test "should update user" do
    patch "/users/#{@user.id}.json", params: { name: "Updated Name" }
    assert_response :success
    @user.reload
    assert_equal "Updated Name", @user.name
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete "/users/#{@user.id}.json"
    end

    assert_response :success
  end
end
