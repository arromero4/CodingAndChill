import math
import random

class Player:
    def __init__(self, letter):
        #letter is x or o
        self.letter = letter
    
    #We want all player to get their next move given a game
    def get_move(self, game):
        pass

class RandomComputerPlayer(Player):
    def __init__(self, letter):
        super().__init__(letter)
    
    def get_move(self, game):
        pass
    
