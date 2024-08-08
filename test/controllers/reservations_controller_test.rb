require "test_helper"
# test/controllers/reservations_controller_test.rb
require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one) # Assuming you have a fixture for reservations
  end

  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should show reservation" do
    get reservations_url(@reservation)
    assert_response :success
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { user_id: users(:one).id, room_id: rooms(:one).id, start_date: "2023-01-01", end_date: "2023-01-10", price: 100, total: 1000 } }
    end

    assert_response :success
  end

  test "should update reservation" do
    patch reservations_url(@reservation), params: { reservation: { start_date: "2023-01-05" } }
    assert_response :success
    @reservation.reload
    assert_equal "2023-01-05", @reservation.start_date
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservations_url(@reservation)
    end

    assert_response :success
  end
end
