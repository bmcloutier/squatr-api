require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_path
    assert_response :success
  end

  test "should show room" do
    get rooms_path(@room)
    assert_response :success
  end

  test "should create room" do
    assert_difference("Room.count") do
      post rooms_path, params: { user_id: User.first.id, address: "123 Main St", city: "Anytown", state: "CA", price: 100, description: "Nice room", home_type: "House", room_type: "Private", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1 }
    end

    assert_response :success
  end

  test "should update room" do
    patch "/rooms/#{@room.id}.json", params: { address: "456 Elm St" }
    assert_response :success
    @room.reload
    assert_equal "456 Elm St", @room.address
  end

  test "should destroy room" do
    assert_difference("Room.count", -1) do
      delete "/rooms/#{@room.id}.json"
    end

    assert_response :success
  end
end
