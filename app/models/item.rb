class Item < ActiveRecord::Base
	validates :movie_id, uniqueness: true

	has_many :stars
	has_many :users, :through => :stars
end
