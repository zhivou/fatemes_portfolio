class Blogpost < ApplicationRecord

  has_one_attached :main_image
  has_rich_text :body_area
  validates_presence_of :title
  validates_presence_of :main_image

end
