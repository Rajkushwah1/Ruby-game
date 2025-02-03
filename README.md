![Snake Game](https://media2.dev.to/dynamic/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Ff8hudn7zkzd3b0xdv1sm.gif)

# Snake Game

A simple Snake game built using Ruby and the ruby2d library. The game features a snake that grows when it eats a target, and the player must avoid the snake colliding with itself.

## Features

- Snake Movement: The snake can move in four directions: up, down, left, and right.
- Growing Snake: Each time the snake touches the target, it grows longer.
- Score Tracking: The score increases every time the snake eats the target.
- Game Over: The game ends if the snake collides with its own body.
- Sound Effects: Background music and sound effects are played using MP3 files.
- Pause/Resume: Press P to pause or resume the game.
- Restart: Press R to restart the game.
- Exit: Press E to exit the game.


## Installation

Before installing the required gems, you need to install the following system dependencies(ubuntu 18.04):
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev
Additionally, the mp3info gem is required for managing sound playback in the game. Ensure it is installed as well

```bash
 gem install ruby2d
 gem install mp3info
 gem install byebug
 Running the Game
```

After installing the dependencies, you can run the game with:

ruby main.rb

## 🚀 About Game
Gameplay

Snake Movement: Use the arrow keys to control the snake.

Growing Snake: The snake grows each time it touches the target.

Scoring: The score increases each time the snake eats the target.

Game Over: The game ends if the snake collides with itself.

Files Overview
snake_detail.rb: Defines the Snake class, which handles the snake's movement, growth, collision detection, and direction checks.
game.rb: Contains the game logic, including handling the score, drawing the target, and managing the game state.
main.rb: The main entry point that sets up the game window, handles user input, and updates the game state in real-time.

## Controls

- Arrow Keys: Control the direction of the snake.
- P / p: Pause or resume the game.
- R / r: Restart the game.
- E / e: Exit the game.


Game Over Screen
When the game is over, the message "Game is finished your score is: [score], Press R to restart" will appear. The game can be restarted by pressing R.