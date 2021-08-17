class Review < ApplicationRecord
  belongs_to :seller
  belongs_to :user
  review presence: true
  rating presence: true, numericality { only_integer:true }
end
