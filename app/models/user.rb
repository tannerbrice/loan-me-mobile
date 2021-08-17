class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # username presence: true, uniqueness: true

  has_many :convos, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :sellers, dependent: :destroy

  has_many :seller_convos, class_name: 'Convo',
                            foreign_key: 'seller_id'
  has_many :buyer_convos, class_name: 'Convo',
                            foreign_key: 'buyer_id'
end
