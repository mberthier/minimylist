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

hats = Category.new(name: "Hats")
hats.save!

bennies = SubCategory.create(name: "Bennies", category: Category.last)
caps = SubCategory.create(name: "Caps", category: Category.last)
fancy_hats = SubCategory.create(name: "Hats", category: Category.last)

shoes = Category.new(name: "Shoes")
shoes.save!

sneakers = SubCategory.create(name: "Sneakers", category: Category.last)
derbies = SubCategory.create(name: "Derbies", category: Category.last)
brogues = SubCategory.create(name: "Brogues", category: Category.last)
oxfords = SubCategory.create(name: "Oxfords", category: Category.last)
boots = SubCategory.create(name: "Boots", category: Category.last)
running_shoes = SubCategory.create(name: "Running Shoes", category: Category.last)
sandals = SubCategory.create(name: "Sandals", category: Category.last)
flip_flops = SubCategory.create(name: "Flip flops", category: Category.last)

tops = Category.new(name: "Tops")
tops.save!

t_shirts = SubCategory.create(name: "T-Shirts", category: Category.last)


tank_tops = SubCategory.create(name: "Tank tops", category: Category.last)
shirts = SubCategory.create(name: "Shirts", category: Category.last)
sweatshirts = SubCategory.create(name: "Sweatshirts", category: Category.last)
knitwears = SubCategory.create(name: "Knitwears", category: Category.last)
cardigans = SubCategory.create(name: "Cardigans", category: Category.last)
vests = SubCategory.create(name: "Vests", category: Category.last)
jackets = SubCategory.create(name: "Jackets", category: Category.last)
coats = SubCategory.create(name: "Coats", category: Category.last)
suit_jackets = SubCategory.create(name: "Suit Jackets", category: Category.last)


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

puts "creating item #3"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685751/WVBAU-H02698KAF_02_960x_xj0tq5.jpg')
green_shirt = Item.new(color: "green", user: User.first, category: Category.last, sub_category: SubCategory.last)
green_shirt.photo.attach(io: file, filename: 'green_shirt.png', content_type: 'image/png')
green_shirt.save!
puts "created item #3"

puts "creating item #4"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725135/COESE-H26051AAB_00_960x_uvhqe0.jpg')
white_t_shirt = Item.new(color: "White", user: User.first, category: Category.last, sub_category: SubCategory.last)
white_t_shirt.photo.attach(io: file, filename: 'white_t_shirt.png', content_type: 'image/png')
white_t_shirt.save!
puts "created item #4"

puts "creating Bottoms category and sub categories"

bottoms = Category.new(name: "Bottoms")
bottoms.save!

jeans = SubCategory.create(name: "Jeans", category: Category.last)
chinos = SubCategory.create(name: "Chinos", category: Category.last)
sweatpants = SubCategory.create(name: "Sweatpants", category: Category.last)
suit_pants = SubCategory.create(name: "Suit pants", category: Category.last)
shorts = SubCategory.create(name: "Shorts", category: Category.last)

puts "created Bottoms category and sub categories"

puts "creating item #5"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638686303/CODBS-M09047_IAI_00_82b0cf81-3747-4c3e-b186-ff13ecd6b116_960x_l0ev1m.jpg')
blue_jeans = Item.new(color: "blue", user: User.first, category: Category.last, sub_category: SubCategory.first)
blue_jeans.photo.attach(io: file, filename: 'blue_jeans.png', content_type: 'image/png')
blue_jeans.save!
puts "created item #5"

puts "creating item #6"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725088/WVAWB-H08362_IAK_00_960x_h8jhvm.jpg')
black_pants = Item.new(color: "Black", user: User.first, category: Category.last, sub_category: SubCategory.last)
black_pants.photo.attach(io: file, filename: 'black_pants.png', content_type: 'image/png')
black_pants.save!
puts "created item #6"

puts "creating item #7"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725086/COZBA-H08119_BAA_00_a1cf3ecd-0319-4b18-a061-848a213c5ac8_960x_vviglb.jpg')
beige_chino = Item.new(color: "Beige", user: User.first, category: Category.last, sub_category: SubCategory.last)
beige_chino.photo.attach(io: file, filename: 'beige_chino.png', content_type: 'image/png')
beige_chino.save!
puts "created item #7"

puts "creating item #8"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725085/COCYG-H08119IAK_00_960x_tlh4el.jpg')
blue_chino = Item.new(color: "Navy", user: User.first, category: Category.last, sub_category: SubCategory.last)
blue_chino.photo.attach(io: file, filename: 'blue_chino.png', content_type: 'image/png')
blue_chino.save!
puts "created item #8"