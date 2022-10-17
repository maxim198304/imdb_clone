class Movie < ApplicationRecord
  has_many :reviews
  belongs_to :category

  has_one_attached :image, :dependent => :destroy

  paginates_per 20

  def blank_stars
    10 - Movie.average(:rating).to_i
   end
end
