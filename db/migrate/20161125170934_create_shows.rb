class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.string :coverart
      t.string :release_date
      t.integer :episodes
      t.string :rss
      t.string :site
      t.string :voice_artist_string

      t.timestamps null: false
    end
  end
end
