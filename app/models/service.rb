class Service < ApplicationRecord

  validates_presence_of :title, :body_area
  has_rich_text :body_area

end
