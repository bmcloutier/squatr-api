# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create(name: "Michael Jordan", email: "mj@example.com", password: "password", password_confirmation: "password", image: "test.jpg")
user.save

user = User.create(name: "OwnerUser", email: "owner@example.com", password: "password", password_confirmation: "password", image: "test.jpg")
user.save

user = User.create(name: "RenterUser", email: "renter@example.com", password: "password", password_confirmation: "password", image: "test.jpg")
user.save

room = Room.create(user_id: 1, address: "2700 Lincoln Ln", city: "Highland Park", state: "Illinois", price: 287.53, description: "this is MJs house", home_type: "mansion", room_type: "entire place", total_occupancy: 9, total_bedrooms: 9, total_bathrooms: 19)
room.save

room = Room.create(user_id: 2, address: "123 Main Street", city: "Anytown", state: "Illinois", price: 99.99, description: "A cozy room", home_type: "House", room_type: "Spare bedroom", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1)
room.save

room_image = RoomImage.create(room_id: 1, url: "https://wallup.net/wp-content/uploads/2019/09/977962-mansion-house-architecture-luxury-building-design.jpg")
room_image.save

room_image = RoomImage.create(room_id: 2, url: "https://media.architecturaldigest.com/photos/566b4513fb46d54744bdd8aa/master/w_1600%2Cc_limit/cozy-bedrooms-21.jpg")
room_image.save

reservation = Reservation.create(user_id: 2, room_id: 1, start_date: "6/25/2024", end_date: "6/28/2024", price: 287.53, total: 862.59)
reservation.save

reservation = Reservation.create(user_id: 2, room_id: 2, start_date: "11/19/2024", end_date: "11/21/2024", price: 99.99, total: 199.98)
reservation.save

review = Review.create(reservation_id: 1, rating: 5, comment: "I loved seeing all the trophies!")
review.save
