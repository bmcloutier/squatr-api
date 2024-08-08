require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one) # Assuming you have a fixture for reviews
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should show review" do
    pp reviews_url(@review)
    get reviews_url(@review)
    assert_response :success
  end

  test "should create review" do
    assert_difference("Review.count") do
      post reviews_url, params: { review: { reservation_id: reservations(:one).id, rating: 5, comment: "Great stay!" } }
    end

    assert_response :success
  end

  test "should update review" do
    patch reviews_url(@review), params: { review: { comment: "Updated comment" } }
    assert_response :success
    @review.reload
    assert_equal "Updated comment", @review.comment
  end

  test "should destroy review" do
    assert_difference("Review.count", -1) do
      delete reviews_url(@review)
    end

    assert_response :success
  end
end
