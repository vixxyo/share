PROJECT TITLE
'''''''Rock, Paper, Scissors Game''''''''
This is a simple Python program that allows you to play the classic rock, paper, scissors game against a computer opponent.


URL:   https://youtu.be/y2SiexTnBUM

DESCRIPTION
''''''How to Play''''''''
To play the game, simply run the project.py file using Python. The game will prompt you to enter your name, and then ask you to choose between rock, paper, or scissors. The computer will also make a choice, and the game will determine the winner based on the following rules:

Rock beats scissors
Scissors beats paper
Paper beats rock
If both players choose the same option, the game is a tie. The game continues for a total of 5 rounds, and at the end, the program will display the final score and the overall result (i.e. whether you won, lost, or drew).



PROJECT DETAILS
The project.py file contains the following functions:

main(): This is the main function of the program, which handles the overall flow of the game. It starts by displaying an introduction message and prompting the player to enter their name. Then it calls the game_start() function to start the game. After the game is over, it displays the final score using the
 score() function and asks the player if they want to play again. If the player wants to play again, the game is restarted, otherwise the program exits.

intro(): This function displays the introduction message and prompts the player to enter their name.

get_player_choice(): This function prompts the player to enter their choice (rock, paper, or scissors) and returns it. If the player enters an invalid choice, it displays an error message and prompts the player to try again.

game_start(): This function starts the game and plays a total of 5 rounds. In each round, it calls the get_player_choice() function to get the player's choice and generates a random choice for the computer using the random.choice() function from the random library. It then determines the winner based on the standard rock, paper, scissors rules and updates the score accordingly. At the end of the game, it returns a dictionary containing the scores for the player, computer, and ties.

score(scores): This function displays the final score, including the number of wins, draws, and losses for both the player and the computer. It also displays the overall result, i.e. whether the player won, lost, or drew.

play_loop(): This function asks the player if they want to play again, and returns True if the player wants to play again, or False if the player does not want to play again.

The program uses the following libraries from the Python standard library:

random: This library is used to generate random choices for the computer.
time: This library is used to pause the program for a few seconds between rounds to add suspense to the game.

The program uses a simple logic to determine the winner in each round:

1) If both the player and the computer choose the same option, it is a tie.
2) If the player chooses rock and the computer chooses scissors, the player wins.
3) If the player chooses paper and the computer chooses rock, the player wins.
4) If the player chooses scissors and the computer chooses paper, the player wins.
5) If none of the above conditions are met, the computer wins.
6) Finally, the program uses a loop to allow the player to play multiple games if they want to. If the player chooses to play again, the game is restarted from the beginning. Otherwise, the program exits.


Testing
The test_project.py file contains a set of unit tests for the project.py file. These tests can be run using the pytest library. Simply run the 'pytest -s' command in the terminal, followed by the name of the test file (e.g. pytest -s test_project.py). This will run the tests and display the test results in the console.

'''''Notes'''''''
The project.py file uses the random and time libraries from the Python standard library.
The test_project.py file uses the unittest library from the Python standard library, as well as the mock library, which needs to be installed separately. To install the mock library, run pip install mock in the terminal.