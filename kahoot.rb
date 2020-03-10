require 'colorize'
require 'cli/ui'
require_relative './qanda.rb' 

def kahoot(no_of_questions)

	i = 0
	score = 0
	
	q_bank = (0..Q_ARR.length-1).to_a.sort{rand() - 0.5}[0..no_of_questions-1] # This generates an array with the question numbers to pull from the question array.

	while i < no_of_questions
		current_q = q_bank[i]
		puts Q_ARR[current_q]
		puts A_ARR[current_q][1..4]
		puts "Which answer is correct? 1, 2, 3 or 4:"
		answer = gets.chomp.to_i
		unless answer == 1 || answer == 2 || answer == 3 || answer == 4
			puts "Invalid answer. Please try again:"
		else
			if answer == A_ARR[current_q][0] 
				score += 1
				puts "You have entered the correct answer! Your score is now #{score}".colorize(:green)
			else 
				puts "Incorrect answer :( Your score is still #{score}".colorize(:red)
			end
			i += 1
		end
	end

	if score == no_of_questions
		puts "Great work! You got all #{score} questions correct - 100%"
	else 
		percent = ((score/no_of_questions.to_f)*100).round(2)
		puts "Game complete! You scored #{score}/#{no_of_questions} or #{percent}%"
	end
end

play_game = true

while play_game == true

	puts "How many questions would you like to answer?"
	print "Maximum of #{Q_ARR.length} questions: "
	no_of_questions = gets.chomp.to_i
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


puts "Thanks for Studying!"
puts "See you next time :D"