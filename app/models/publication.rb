class Publication < ApplicationRecord
  belongs_to :research, inverse_of: :publications
end
