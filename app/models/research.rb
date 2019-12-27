class Research < ApplicationRecord
  has_many :publications
  accepts_nested_attributes_for :publications,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :main_image
  has_one_attached :main_image
  has_one_attached :video
  has_rich_text :body_area
end
