class Category < ApplicationRecord
  has_many :contents, through: :content_categories
end
