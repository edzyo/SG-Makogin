class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_attached_file :foto, styles: { large: "1280x1024>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
  validates :title, presence: true, length: { in: 2..30 }
  validates :description, presence: true, length: { minimum: 3 }, allow_blank: true
  validates :price, presence: true

end
