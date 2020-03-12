## Statement of Purpose & Scope

This terminal app is a clone of the "Kahoot!" app we use for study reviews in class. Containing a bank of questions, it allows the user
to study as many or as few questions as they like.

## List of Features

Initial menu - Welcomes the user to the program. Indicates to the player the most questions they can answer in one round (based on length of question array to make the program 'future proof'). If the player inputs an invalid selection then it will continually return an error message until a valid selection is entered.

Main game - Lists a question which is randomly chosen from the main question bank. The user scrolls through the 4 available choices to indicate which one they believe is correct. If the answer is correct the green text indicates so and the users score is incremented and returned. Otherwise the correct answer is display.

End of game - Upon finishing all their questions, they players final score is presented on screen and also converted to a percentage. The player can choose whether to play again or to exit the game.

## User Interaction

Upon running the program the user will be met with a Heading and prompt to enter how many questions they wish to answer. The maximum amount
of questions will be indicated. Should the user input a number outside that range or letters, the terminal will output an error and ask the user to try again 

Once the user has selected how many questions to answer, they will be brought to a screen which asks a question and has 4 potential answers - 
3 incorrect and 1 correct. Using CLI-UI the user can scroll through the answers with the up and down arrows and select by pressing the enter
key. The user can also type the corresponding number to select that answer.

Once an answer is selected the screen will indicate whether the user was correct or incorrect, and indicate their running score. At the end of
their selected questions, the user will be shown their total score and their percentage of questions answered correctly. They will then
be shown a prompt on whether to study another round or exit the program.

## Implementation Plan
<!-- Develop an implementation plan which: -->
<!-- - outlines how each feature will be implemented and a checklist of tasks for each feature -->
<!-- - prioritise the implementation of different features, or checklist items within a feature -->
<!-- - provide a deadline, duration or other time indicator for each feature or checklist/checklist-item -->

<!-- Utilise a suitable project management platform to track this implementation plan -->

<!-- > Your checklists for each feature should have at least 5 items. -->



## Help Documentation

<!-- Design help documentation which includes a set of instructions which accurately describe how to use and install the application. -->

<!-- You must include: -->
<!-- - steps to install the application -->
<!-- - any dependencies required by the application to operate -->
<!-- - any system/hardware requirements -->
**Installation:**

1. Unzip 'kahoot.rb' and 'qanda.rb' to the same directory
2. Install the gems 'colorize', 'cli-ui', 'ruby_figlet', and io-console'