class Item < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  belongs_to :sub_category
  belongs_to :category
  validates :user, :sub_category, :category, :color, :photo, presence: true
  # validates :sub_category, inclusion: { in: ["Bennies", "Hats", "Caps", "Shirts","T-shirts", "Polo shirts", "Tank tops", "Sweatshirts", "Knitwears", "Cardigans", "Vests", "Jackets", "Coats", "Suit Jackets", "Jeans", "Chinos", "Sweatpants", "Suit pants", "Shorts", "Sneakers", "Boots", "Running Shoes", "Sandals", "Flip flops", "Dress shoes"] }
  # validates :category, inclusion: { in: ["Hats", "Tops", "Bottoms", "Shoes"] }
  # validates :color, inclusion: { in: ["Black", "White", "Bown", "Light grey", "Dark grey", "Beige", "Camel", "Brown", "Pink", "Navy", "Burgundy", "Forest green", "Red", "Orange", "Light blue", "Purple", "Green", "Yellow"] }
  # validates :fabric, inclusion: { in: ["Cotton", "Leather", "Mixed fabric", "Jersey", "Linen", "Wool", "Merino Wool", "Polyester", "Satin", "Lycra", "Silk", "Suede", "Tweed", "Twill", "Velvet", "Cashmeer"] }
  # validates :fit, inclusion: { in: ["Fitted", "Casual", "Skinny",] }
end


