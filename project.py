import random
import time
import sys

def main():
    intro()
    while True:
        try:
            scores = game_start()
        except ValueError as e:
            print(e)
            continue
        print(score(scores))
        if not play_loop():
            break
def intro():
    print("\nWelcome to rock, paper, scissor game\n")
    name = input("Enter your name: ")
    time.sleep(2)
    print("Hello " + name + "!")
    time.sleep(2)
    print("The game is about to start!\n Let's play!")
    time.sleep(2)

def get_player_choice():
    #Prompts the player to enter their choice and returns it.
    choices = ['rock', 'paper', 'scissors']
    while True:
        player_choice = input('Enter your choice (rock/paper/scissors): ')
        if player_choice in choices:
            return player_choice
        '''raise ValueError("Invalid choice! Please enter 'rock', 'paper', or 'scissors'")'''
        print("Invalid choice! Please enter 'rock', 'paper', or 'scissors'")

def game_start():
    scores = {'player': 0, 'computer': 0, 'tie': 0}
    choices = ['rock', 'paper', 'scissors']
    limit = 5
    while limit > 0:
        print(f'\n\n********************Number of chances remain is {limit}!***********************')
        print('Ready...')
        time.sleep(2)
        print('Set...')
        time.sleep(2)
        print('Go!')
        time.sleep(1)

        player_choice = get_player_choice()
        computer_choice = random.choice(choices)
        print(f'You chose {player_choice} and the computer chose {computer_choice}.')
        if player_choice == computer_choice:
            print('It\'s a tie!')
            scores['tie'] += 1
        elif player_choice == 'rock':
            if computer_choice == 'paper':
                print('You lose!')
                scores['computer'] += 1
            else:
                print('You win!')
                scores['player'] += 1
        elif player_choice == 'paper':
            if computer_choice == 'scissors':
                print('You lose!')
                scores['computer'] += 1
            else:
                print('You win!')
                scores['player'] += 1
        elif player_choice == 'scissors':
            if computer_choice == 'rock':
                print('You lose!')
                scores['computer'] += 1
            else:
                print('You win!')
                scores['player'] += 1
        else:
            print('Invalid choice!')
        limit -= 1
    return scores

def score(scores):
    #Displayes result
    player_wins = scores['player']
    draws = scores['tie']
    computer_wins = scores['computer']
    result = 'It was a draw!'
    if player_wins > computer_wins:
        result = 'You won the game!'
    elif computer_wins > player_wins:
        result = 'You lost the game!'
    return (f'You won {player_wins} times, drew {draws} times, and lost {computer_wins} times.\nOverall result: {result}').upper()

def play_loop():
    #Asks again to play the game
    play = input("Do You want to play again? press 'y' for yes or 'n' for no \n")
    if play == "y":
        return True
    elif play == "n":
        print("Thanks For Playing! We expect you back again!")


if __name__ == '__main__':
    main()
