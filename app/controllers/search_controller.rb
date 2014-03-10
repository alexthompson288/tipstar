class SearchController < ApplicationController
	def index

		@tipstarmovies = Item.find_by_name(params[:title])
		
		unless @tipstarmovies
			@movies = Tmdb::Movie.find(params[:query])
			@movies.each do |movie|
				film = Item.new(params[:movie])
	  			title = movie.title
	  			id = movie.id
	  			description = movie.overview
	  			image = movie.poster_path
	  			film.update_attributes name: title
	  			film.update_attributes movie_id: id
	  			film.update_attributes image: image
	  			film.update_attributes description: description
			end
		end
	end
end