class Movie < ApplicationRecord
  belongs_to :user
  # has_many :reviews, dependent: :destroy - у тебя нет модели для ревью, пока не создал будет ломать приложение
  has_many :users, through: :reviews
  has_one_attached :image, :dependent => :destroy
end
