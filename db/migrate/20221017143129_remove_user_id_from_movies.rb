class RemoveUserIdFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :user_id, :integer
  end
end
