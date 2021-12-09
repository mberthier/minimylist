class Item < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  belongs_to :sub_category
  belongs_to :category
  validates :user, :sub_category, :category, :color, :photo, presence: true
end


