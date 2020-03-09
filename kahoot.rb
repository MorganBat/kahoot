require 'colorize'
require 'cli/ui'
require_relative './qanda.rb'

def kahoot(no_of_questions)
	i = 0
	score = 0

	# Make a random number generator which won't repeat itself so I don't get repeat questions.
	# Possibly make an array and delete the number once I'm done?
	
	while i < no_of_questions
		puts QARR[3] # Change 0 to the random number variable when it's working
		puts AARR[3][1..4] # Change first 0 to the random number variable when it's working
		puts "Which answer is correct? 1,2,3 or 4:"
		answer = gets.chomp.to_i
		if answer == AARR[3][0] # Change first 0 to the random number variable when it's working
			score += 1
			puts "You have entered the correct answer! Your score is now #{score}".colorize(:green)
		else 
			puts "Incorrect answer :( Your score is still #{score}".colorize(:red)
		end
	i += 1
	end
	if score == no_of_questions
		puts "Great work! You got all #{score} questions correct"
	else 
		puts "Game complete! You scored #{score}/#{no_of_questions}"
	end
end

play_game = true
no_of_questions = 2 #Remove this line once I set up method to do multiple questions

while play_game == true
    # print "How many questions would you like to answer? "
	# no_of_questions = gets.chomp.to_i
	kahoot(no_of_questions)


	print "Would you like to play again (y/n): "
	play_game_answer = gets.chomp.downcase
	play_game_answer = play_game_answer[0]
		if play_game_answer == "y"
			play_game = true
		else
			play_game = false
		end
		
end


