# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create(name: "Michael Jordan", email: "test@example.com", password: "password", password_confirmation: "password", image: "test.jpg")

user.save

room = Room.create(user_id: 1, address: "2700 Lincoln Ln", city: "Highland Park", state: "Illinois", price: 287.53, description: "this is MJs house", home_type: "mansion", room_type: "entire place", total_occupancy: 9, total_bedrooms: 9, total_bathrooms: 19)

room.save
