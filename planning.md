classes:

game - class
-instantiates a new instance of the game(??)
-holds the game loop


player - class - sub-class of game(??)
-instantiates the two players
-player1 variable, player2 variable
    lives
    -decrease_life method - removes a life when a question is answered incorrectly - public
    -lives variable - tracks the current number of lives for a player
    

turn/question - class - sub-class of game(??)
-instantiates each turn/question
-randomly generates two numbers
-manages the current_player variable

