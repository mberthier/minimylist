require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "deleting all items, categories & sub categories"

Item.delete_all
SubCategory.delete_all
Category.delete_all

puts "all instances have been deleleted"

# Seed Categories and Sub Categories and Items
puts "creating Hats category"
hats = Category.new(name: "Hats")
hats.save!
puts "created Hats category"

bennies = SubCategory.create(name: "Beanies", category: Category.last)

puts "creating item Beanie"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638907213/production/hrdpx094fm0jipej0bofmjgcf5nz.webp')
beanie = Item.new(color: "Burgundy", user: User.first, category: Category.last, sub_category: SubCategory.last)
beanie.photo.attach(io: file, filename: 'beanie.png', content_type: 'image/png')
beanie.save!
puts "created item Black Beanie"

caps = SubCategory.create(name: "Caps", category: Category.last)

puts "creating item Cap"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638909196/production/ub2wzfkq72lxe6t46ti2w99wfux8.webp')
cap = Item.new(color: "Black", user: User.first, category: Category.last, sub_category: SubCategory.last)
cap.photo.attach(io: file, filename: 'cap.png', content_type: 'image/png')
cap.save!
puts "created item Black Cap"

caps = SubCategory.create(name: "Caps", category: Category.last)
fancy_hats = SubCategory.create(name: "Hats", category: Category.last)

puts "created all Hats Sub_Categories and sample hats"

puts "creating Tops category"
tops = Category.new(name: "Tops")
tops.save!
puts "created Tops category"

tank_tops = SubCategory.create(name: "Tank tops", category: Category.last)
t_shirts = SubCategory.create(name: "T-Shirts", category: Category.last)
puts "creating item White T-Shirts"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725135/COESE-H26051AAB_00_960x_uvhqe0.jpg')
white_t_shirt = Item.new(color: "White", user: User.first, category: Category.last, sub_category: SubCategory.last)
white_t_shirt.photo.attach(io: file, filename: 'white_t_shirt.png', content_type: 'image/png')
white_t_shirt.save!
puts "created item White T-Shirts"
puts "creating item Orange T-Shirts"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638851706/production/2telrm2upi0utvqenc3n6ifqh297.webp')
orange_t_shirt = Item.new(color: "Orange", user: User.first, category: Category.last, sub_category: SubCategory.last)
orange_t_shirt.photo.attach(io: file, filename: 'orange_t_shirt.png', content_type: 'image/png')
orange_t_shirt.save!
puts "created item Orange T-Shirts"
puts "creating item Green T-Shirts"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638851575/production/wzdymiv8yicywj4qt5e9tunbn6bk.webp')
green_t_shirt = Item.new(color: "Green", user: User.first, category: Category.last, sub_category: SubCategory.last)
green_t_shirt.photo.attach(io: file, filename: 'green_t_shirt.png', content_type: 'image/png')
green_t_shirt.save!
puts "created item Green T-Shirts"
polo_shirts = SubCategory.create(name: "Polo-Shirts", category: Category.last)
shirts = SubCategory.create(name: "Shirts", category: Category.last)
puts "creating item Blue Shirt"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685038/CODDE-H12294_IAI_00_960x_ydien1.jpg')
blue_shirt = Item.new(color: "blue", user: User.first, category: Category.last, sub_category: SubCategory.last)
blue_shirt.photo.attach(io: file, filename: 'blue_shirt.png', content_type: 'image/png')
blue_shirt.save!
puts "created item Blue Shirt"
puts "creating item White Shirt"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685650/COZAA-H12222_AAB_00_891dd0a1-dedb-44a6-a7c6-51d37a3f3b87_960x_zampzl.jpg')
white_shirt = Item.new(color: "white", user: User.first, category: Category.last, sub_category: SubCategory.last)
white_shirt.photo.attach(io: file, filename: 'white_shirt.png', content_type: 'image/png')
white_shirt.save!
puts "created item White Shirt"
puts "creating item Green Shirt"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638685751/WVBAU-H02698KAF_02_960x_xj0tq5.jpg')
green_shirt = Item.new(color: "green", user: User.first, category: Category.last, sub_category: SubCategory.last)
green_shirt.photo.attach(io: file, filename: 'green_shirt.png', content_type: 'image/png')
green_shirt.save!
puts "created item Green Shirt"
cardigans = SubCategory.create(name: "Cardigans", category: Category.last)
sweatshirts = SubCategory.create(name: "Sweatshirts", category: Category.last)
knitwears = SubCategory.create(name: "Knitwears", category: Category.last)
puts "creating item Beige Knit"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1639112229/production/CODDA-H23951AAD_00_960x_xbedk2.jpg')
beige_knit = Item.new(color: "Beige", user: User.first, category: Category.last, sub_category: SubCategory.last)
beige_knit.photo.attach(io: file, filename: 'beige_knit.png', content_type: 'image/png')
beige_knit.save!
puts "created item Beige Knit"
puts "creating item Pink Knit"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1639112281/production/WVAXY-H23964_GAC_00_960x_ki7ob8.jpg')
pink_knit = Item.new(color: "Pink", user: User.first, category: Category.last, sub_category: SubCategory.last)
pink_knit.photo.attach(io: file, filename: 'pink_knit.png', content_type: 'image/png')
pink_knit.save!
puts "created item Pink Knit"
vests = SubCategory.create(name: "Vests", category: Category.last)
suit_jackets = SubCategory.create(name: "Suit Jackets", category: Category.last)
jackets = SubCategory.create(name: "Jackets", category: Category.last)
coats = SubCategory.create(name: "Coats", category: Category.last)

puts "created all Tops Sub_Categories and sample tops"
puts "creating Bottoms category and sub categories"

bottoms = Category.new(name: "Bottoms")
bottoms.save!

shorts = SubCategory.create(name: "Shorts", category: Category.last)
chinos = SubCategory.create(name: "Chinos", category: Category.last)
puts "creating item Beige Chinos"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725086/COZBA-H08119_BAA_00_a1cf3ecd-0319-4b18-a061-848a213c5ac8_960x_vviglb.jpg')
beige_chino = Item.new(color: "Beige", user: User.first, category: Category.last, sub_category: SubCategory.last)
beige_chino.photo.attach(io: file, filename: 'beige_chino.png', content_type: 'image/png')
beige_chino.save!
puts "created item Beige Chinos"

puts "creating item Navy Chinos"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725085/COCYG-H08119IAK_00_960x_tlh4el.jpg')
blue_chino = Item.new(color: "Navy", user: User.first, category: Category.last, sub_category: SubCategory.last)
blue_chino.photo.attach(io: file, filename: 'blue_chino.png', content_type: 'image/png')
blue_chino.save!
puts "created item Navy Chinos"

jeans = SubCategory.create(name: "Jeans", category: Category.last)
puts "creating item Blue Jeans"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638686303/CODBS-M09047_IAI_00_82b0cf81-3747-4c3e-b186-ff13ecd6b116_960x_l0ev1m.jpg')
blue_jeans = Item.new(color: "blue", user: User.first, category: Category.last, sub_category: SubCategory.first)
blue_jeans.photo.attach(io: file, filename: 'blue_jeans.png', content_type: 'image/png')
blue_jeans.save!
puts "created item Blue Jeans"

suit_pants = SubCategory.create(name: "Suit pants", category: Category.last)
puts "creating item Black Pants"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1638725088/WVAWB-H08362_IAK_00_960x_h8jhvm.jpg')
black_pants = Item.new(color: "Black", user: User.first, category: Category.last, sub_category: SubCategory.last)
black_pants.photo.attach(io: file, filename: 'black_pants.png', content_type: 'image/png')
black_pants.save!
puts "created Black Pants"

sweatpants = SubCategory.create(name: "Sweatpants", category: Category.last)

puts "created all Bottoms Sub_Categories and sample bottoms"

puts "creating Category 'Shoes'"
shoes = Category.new(name: "Shoes")
shoes.save!
puts "created Category 'Shoes'"

flip_flops = SubCategory.create(name: "Flip flops", category: Category.last)
sandals = SubCategory.create(name: "Sandals", category: Category.last)
running_shoes = SubCategory.create(name: "Running Shoes", category: Category.last)
sneakers = SubCategory.create(name: "Sneakers", category: Category.last)

puts "creating item White Sneakers"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1639109164/PSAGJ-M56108AAB_03_600x_vu5bzg.jpg')
white_sneakers = Item.new(color: "White", user: User.first, category: Category.last, sub_category: SubCategory.last)
white_sneakers.photo.attach(io: file, filename: 'white_sneakers.png', content_type: 'image/png')
white_sneakers.save!
puts "created item White Sneakers"

derbies = SubCategory.create(name: "Derbies", category: Category.last)

puts "creating item Black Derbies"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1639109163/PXBAA-H53227LZZ_03_600x_yf16oo.jpg')
black_derbies = Item.new(color: "Black", user: User.first, category: Category.last, sub_category: SubCategory.last)
black_derbies.photo.attach(io: file, filename: 'black_derbies.png', content_type: 'image/png')
black_derbies.save!
puts "created item Black Derbies"

brogues = SubCategory.create(name: "Brogues", category: Category.last)
oxfords = SubCategory.create(name: "Oxfords", category: Category.last)
boots = SubCategory.create(name: "Boots", category: Category.last)

puts "creating item Black Boots"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1639109167/PXBAA-H54207LZZ_03_600x_gaudgn.jpg')
black_boots = Item.new(color: "Black", user: User.first, category: Category.last, sub_category: SubCategory.last)
black_boots.photo.attach(io: file, filename: 'black_boots.png', content_type: 'image/png')
black_boots.save!
puts "created item Black Boots"

puts "creating item Chelsea Boots"
file = URI.open('https://res.cloudinary.com/mberthier/image/upload/v1639109165/H54156PXBAALZZ_01_3c960dcb-0ed9-4578-bc5a-bfa04e9c2464_600x_mbql0d.jpg')
chelsea_boots = Item.new(color: "Black", user: User.first, category: Category.last, sub_category: SubCategory.last)
chelsea_boots.photo.attach(io: file, filename: 'chelsea_boots.png', content_type: 'image/png')
chelsea_boots.save!
puts "created item Chelsea Boots"

puts "created all Shoes Sub_Categories and sample shoes"

puts "Seed completed"