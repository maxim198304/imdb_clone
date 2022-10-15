class Movie < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  has_one_attached :image, :dependent => :destroy
end
