class Teaching < ApplicationRecord

  has_rich_text :body_area
  has_one_attached :video
  validates_presence_of :title

end
