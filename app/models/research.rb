class Research < ApplicationRecord
  has_many :publications
  accepts_nested_attributes_for :publications,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title
  has_one_attached :main_image
  has_rich_text :body_area
end
