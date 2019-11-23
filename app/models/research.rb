class Research < ApplicationRecord
  has_many :publications
  accepts_nested_attributes_for :publications,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title
end
