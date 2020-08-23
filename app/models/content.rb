class Content < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :contents_categories
  has_many :categories, through: :contents_categories
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :categories, presence: true
  validates :content_type, presence: true, inclusion: { in: [ "Video", "Blog post", "Step-by-Step" ] }
end
