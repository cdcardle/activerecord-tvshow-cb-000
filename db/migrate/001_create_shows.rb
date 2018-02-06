class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |s|
      s.string :name
      s.string :network
      s.datetime :day
      s.integer :rating
    end
  end
end
