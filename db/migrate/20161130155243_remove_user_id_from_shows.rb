class RemoveUserIdFromShows < ActiveRecord::Migration
  def change
    remove_column :shows, :user_id, :integer
  end
end
