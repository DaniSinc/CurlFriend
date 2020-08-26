class Content < ApplicationRecord
  url = /[-a-zA-Z0-9@:%_\+.~#?&\/\/=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&\/\/=]*)?/
  belongs_to :user
  has_many :comments
  has_many_attached :images
  
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: {in: ["Natural", "Artificial", "Chemical Treatment", "Protection"] }
  validates :content_type, presence: true, inclusion: { in: [ "Video", "Blog post", "Step-by-Step" ] }
  validates :video_url, format: { with: url }
  def thumbnail_url
    key = video_url.split("/").last.split("=").last
    "https://i.ytimg.com/vi/#{key}/hqdefault.jpg"
  end
end
