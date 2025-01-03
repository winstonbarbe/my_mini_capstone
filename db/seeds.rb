# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  Product.create!(
    name: FFaker::Product.product_name, # Generates a realistic product name
    price: rand(10..1000),              # Random price between 10 and 1000
    description: FFaker::Lorem.sentence, # Generates a short description
    image_path: FFaker::Avatar.image     # Generates a random image URL
  )
end
