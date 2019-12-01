class Teaching < ApplicationRecord

  has_rich_text :body_area
  validates_presence_of :title

end
