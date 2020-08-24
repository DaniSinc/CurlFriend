class Category < ApplicationRecord
  has_many :contents, through: :content_categories
  has_many :content_categories
  validates :name, presence: true
end
