class Fk < ActiveRecord::Migration
  def change
    add_foreign_key :shows, :users
  end
end
