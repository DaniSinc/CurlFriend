class Content < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :categories, through: :contents_categories
  validates :name, presence: true
  has_one_attached :video
  has_many_attached :images
  validates :category, presence: true inclusion: {in: ["plaits", "bantu knots", "dreadlocks", "afro", "weaves", "extensions", "faux locks", "perms", "relaxed", "s-curl", "jerri-curl", "headscarves and headwraps"]}
end
