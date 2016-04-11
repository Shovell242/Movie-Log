class MovieTracker

	@@movies = Hash.new("No movies yet!")

	def initialize
		puts "Welcome to the movie rating system!"
		loop do
			menu
			user_input = gets.chomp.to_i
			menu_options(user_input)
		end	
	end

	def menu
		puts "Hit (1) to Add a movie\n"\
				 "Hit (2) to Display all movies\n"\
		     "Hit (3) to Update a rating \n"\
		     "Hit (4) to Delete a movie \n"\
		     "Hit (5) to Exit\n"
	end

	def menu_options( option )
			case
			when option == 1
				add_movie
			when option == 2
				display_movies
			when option == 3
				update_movie
			when option == 4
				delete_movie
			when option == 5
				close
			else
				puts "I'm sorry that's not an option!"
			end	
	end


	def add_movie
		puts "What's the name of the movie?"
		title = gets.chomp
		puts "What's your rating out of 5?"
		rating = gets.chomp.to_i
		@@movies[title] = rating
		puts "Succesfully added to the database!"
	end

	def display_movies
		@@movies.each { |movie, rating| puts "#{movie}: #{rating}/5" }
	end

	def update_movie
		puts "What movie do you want to update?"
		title = gets.chomp
		puts "What's the new rating?"
		new_rating = gets.chomp.to_i
		@@movies[title] = new_rating
		puts "Succesfully updated!"
	end

	def delete_movie
		puts "What movie do you want to delete?"
		title = gets.chomp
		@@movies.delete(title)
		puts "#{movie} has been removed"
	end

	def close
		puts "Exiting the program!"
		exit
	end

end




