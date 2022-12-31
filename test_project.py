
from project import get_player_choice, game_start, score
from unittest.mock import patch

def main():
    test_get_player_choice()#function uses an assert statement to verify that the get_player_choice function returns a valid choice
    test_game_start()#function uses assert statements to verify that the game_start function updates the scores dictionary correctly.
    test_score()#function uses assert statements to verify that the score function prints the
                #correct total number of wins, draws, and losses, as well as the overall result.

def test_get_player_choice():
    player_choice = get_player_choice()
    assert player_choice in ['rock', 'paper', 'scissors']

def test_game_start():
    scores = game_start()
    assert scores['player'] >= 0
    assert scores['computer'] >= 0
    assert scores['tie'] >= 0

@patch('project.game_start')
def test_score(mock_game_start):
    scores = {'player': 2, 'computer': 2, 'tie': 1}
    mock_game_start.return_value = scores
    expected_output = ('You won 2 times, drew 1 times, and lost 2 times.\nOverall result: It was a draw!').upper()
    assert score(scores) == expected_output

if __name__ == '__main__':
    main()