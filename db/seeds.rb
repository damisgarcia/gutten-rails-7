# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Create a default user"
admin = FactoryBot.build(:user)

admin.email = "admin@mail.com"
admin.password = "123456"
admin.password_confirmation = "123456"
admin.admin!

puts "Create registered users"
FactoryBot.build_list(:user, 10).each do |user|
  user.password = "123456"
  user.password_confirmation = "123456"
  user.save!
end

puts "Create publisher users"
publishers = FactoryBot.build_list(:user, 5).each do |user|
  user.password = "123456"
  user.password_confirmation = "123456"
  user.publisher!
end

puts "Creating posts..."
publishers.each do |publisher|
  FactoryBot.build_list(:post, 15, author: publisher).each do |post|
    post.published!
  end
end
