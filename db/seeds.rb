# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Book.create([
  { title: "To Kill a Mockingbird", author: "Harper Lee", price: 10.99, published_date: Date.new(1960, 7, 11) },
  { title: "1984", author: "George Orwell", price: 8.99, published_date: Date.new(1949, 6, 8) },
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 12.99, published_date: Date.new(1925, 4, 10) },
  { title: "Pride and Prejudice", author: "Jane Austen", price: 9.99, published_date: Date.new(1813, 1, 28) },
  { title: "The Catcher in the Rye", author: "J.D. Salinger", price: 11.99, published_date: Date.new(1951, 7, 16) }
])

puts "Books seeded successfully!"
