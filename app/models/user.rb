class User < ApplicationRecord
  validates :user_name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :favorites, dependent: :destroy
  has_many :favorite_books, through: :favorites, source: :book
  has_many :contactbooks, dependent: :destroy
  has_many :contact_books, through: :contactbooks, source: :contact
  
end
