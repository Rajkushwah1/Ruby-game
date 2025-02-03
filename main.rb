require 'ruby2d'
require 'mp3info' 
require_relative 'game.rb'
require_relative 'snake_detail.rb'

boom = Sound.new('mp3/Roku.mp3')

sound_length = Mp3Info.new('mp3/Roku.mp3').length

boom.play

set fps_cap: 20
set width: 800
set height: 600

GRID = 20
WINDOW_WIDTH = Window.width / GRID
WINDOW_HEIGHT = Window.height / GRID

snake = Snake.new
game = Game.new
@paused = false
@last_play_time = Time.now

update do
  clear
  unless game.finished
	  unless @paused
	  	snake.move
		  snake.draw
		  game.draw
		  if Time.now - @last_play_time > sound_length
	      boom.play
	      @last_play_time = Time.now
	    end
		  if game.hit_the_ball?(snake.x, snake.y) 
		  	 game.record
		  	 snake.increse_snake_height
		  end
		  if snake.hit_its_own_body?
		  	game.finish
		  end
	  end 
	end
end
 
on :key_down do | action | 
	# p key ##<struct Ruby2D::Window::KeyEvent type=:down, key="up">
	if ['up', 'down', 'left', 'right'].include?(action.key)
		if snake.check_snake_direction?(action.key)
			snake.direction = action.key
		end
	elsif action.key == 'r' || action.key == 'R'
		snake = Snake.new 
		game = Game.new 
	elsif action.key == 'p' || action.key == 'P'  # Pause/Resume game when 'p' is pressed
    @paused = !@paused  # Toggle the paused state
	elsif action.key == 'e' || action.key == 'E' 
     exit()
	end
end

show
