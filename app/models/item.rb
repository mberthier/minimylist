class Item < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  belongs_to :sub_category
  belongs_to :category
  validates :user, :sub_category, :category, :color, :photo, presence: true
  # validates :sub_category, inclusion: { in: ["Bennies", "Hats", "Caps", "Shirts","T-shirts", "Polo shirts", "Tank tops", "Sweatshirts", "Knitwears", "Cardigans", "Vests", "Jackets", "Coats", "Suit Jackets", "Jeans", "Chinos", "Sweatpants", "Suit pants", "Shorts", "Sneakers", "Boots", "Running Shoes", "Sandals", "Flip flops", "Dress shoes"] }
  # validates :category, inclusion: { in: ["Hats", "Tops", "Bottoms", "Shoes"] }
end


