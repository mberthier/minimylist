require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "deleting all items, categories & sub categories"

Item.delete_all
SubCategory.delete_all
Category.delete_all

puts "all instances have been deleleted"

# Seed Categories and Sub Categories
puts "creating Tops category and sub categories"

tops = Category.new(name: "Tops")
tops.save!

  shirts = SubCategory.create(name: "Shirts", category: Category.last)
  t_shirts = SubCategory.create(name: "T-Shirts", category: Category.last)
  sweatshirts = SubCategory.create(name: "Sweatshirts", category: Category.last)

puts "created Tops category and sub categories"

puts "creating item #1"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685038/CODDE-H12294_IAI_00_960x_ydien1.jpg')
blue_shirt = Item.new(color: "blue", user: User.first, category: Category.last, sub_category: SubCategory.last)
blue_shirt.photo.attach(io: file, filename: 'blue_shirt.png', content_type: 'image/png')
blue_shirt.save!
puts "created item #1"

puts "creating item #2"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685650/COZAA-H12222_AAB_00_891dd0a1-dedb-44a6-a7c6-51d37a3f3b87_960x_zampzl.jpg')
white_shirt = Item.new(color: "white", user: User.first, category: Category.last, sub_category: SubCategory.last)
white_shirt.photo.attach(io: file, filename: 'white_shirt.png', content_type: 'image/png')
white_shirt.save!
puts "created item #2"

puts "creating item #2"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685751/WVBAU-H02698KAF_02_960x_xj0tq5.jpg')
green_shirt = Item.new(color: "green", user: User.first, category: Category.last, sub_category: SubCategory.last)
green_shirt.photo.attach(io: file, filename: 'green_shirt.png', content_type: 'image/png')
green_shirt.save!
puts "created item #3"

puts "creating Bottoms category and sub categories"

bottoms = Category.new(name: "Bottoms")
bottoms.save!

jeans = SubCategory.create(name: "Jeans", category: Category.last)

puts "created Bottoms category and sub categories"

puts "creating item #4"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638686303/CODBS-M09047_IAI_00_82b0cf81-3747-4c3e-b186-ff13ecd6b116_960x_l0ev1m.jpg')
blue_jeans = Item.new(color: "blue", user: User.first, category: Category.last, sub_category: SubCategory.last)
blue_jeans.photo.attach(io: file, filename: 'blue_jeans.png', content_type: 'image/png')
blue_jeans.save!
puts "created item #4"

