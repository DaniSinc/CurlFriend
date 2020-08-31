class Content < ApplicationRecord
  url = /[-a-zA-Z0-9@:%_\+.~#?&\/\/=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&\/\/=]*)?/
  CATEGORIES = ["Natural", "Artificial", "Chemical treatment", "Protection"]
  STYLES = [ "Afro", "Bantu knots", "Dreadlocks", "Extensions",  "Faux locks", "Headscarves and Headwraps", "Jerry-curl", "Relaxed", "S-curl","Plaits", "Perms", "Weaves" ]
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :blog_image
  has_many_attached :images

  acts_as_favoritable
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :style, presence: true, inclusion: { in: STYLES }

  def thumbnail_url
    if video_url.present?
      key = video_url.split("/").last.split("=").last
      "https://i.ytimg.com/vi/#{key}/hqdefault.jpg"
    end
  end
end
