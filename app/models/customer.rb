class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders
  validates :name , presence: true
  validates :lastname, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true
end
