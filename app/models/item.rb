class Item < ApplicationRecord
  belongs_to :user
  belongs_to :sub_category
  belongs_to :category
  belongs_to :sub_category, optional: true
  validates :user, :sub_category, :category, presence: true
end


