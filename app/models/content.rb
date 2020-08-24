class Content < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :categories, through: :contents_categories
end
