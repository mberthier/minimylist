class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :items
  validates :name, uniqueness: true
end
