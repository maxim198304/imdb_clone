class ChangeRatingForMovies < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :rating, 'integer USING CAST(rating AS integer)'
  end
end
