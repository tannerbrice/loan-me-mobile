class Seller < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user
  gender presence: true
  age presence: true, numericality: { greater_than: 17 }
  price presence: true, numericality: { only_integer: true }
  location presence: true
  smoker presence: true
  drinker presence: true
  vaccinated presence: true
  bio presence: true, length: { minimum: 20 }
end
