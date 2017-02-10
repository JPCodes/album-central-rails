class Album < ActiveRecord::Base
  validates :name, :price, :artist, :release_date, :presence => true
end
