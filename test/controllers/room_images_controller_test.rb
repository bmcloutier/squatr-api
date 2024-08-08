require "test_helper"

class RoomImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_image = room_images(:one) # Assuming you have a fixture for room_images
  end

  test "should get index" do
    get room_images_path
    assert_response :success
  end

  test "should show room_image" do
    get room_images_path(@room_image)
    assert_response :success
  end

  test "should create room_image" do
    assert_difference("RoomImage.count") do
      post room_images_path, params: { room_id: rooms(:one).id, url: "http://example.com/image.jpg" }
    end

    assert_response :success
  end

  test "should update room_image" do
    patch "/room_images/#{@room_image.id}.json", params: { room_id: rooms(:one).id, url: "http://example.com/updated_image.jpg" }
    assert_response :success
    @room_image.reload
    assert_equal "http://example.com/updated_image.jpg", @room_image.url
  end

  test "should destroy room_image" do
    assert_difference("RoomImage.count", -1) do
      delete "/room_images/#{@room_image.id}.json"
    end

    assert_response :success
  end
end
