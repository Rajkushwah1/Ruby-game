class Game
	 attr_accessor :finished, :score

	 def initialize
	 	@score = 0  
	 	@ball_x = rand(WINDOW_WIDTH)
	 	@ball_y = rand(WINDOW_HEIGHT)
	 	@finished = false
	 end

	 def draw
	 	unless finished?
	 		Square.new(x: @ball_x * GRID, y: @ball_y * GRID, size: GRID - 1, color: 'yellow')
	 	end
	 	Text.new(text_message, color: 'green', x: 0, y: 0, size: 25 )
	 end 

	 def hit_the_ball?(x, y)
	 	@ball_x == x && @ball_y == y  
	 end 

	 def record 
	 	@score += 1
	 	@ball_x = rand(WINDOW_WIDTH)
	 	@ball_y = rand(WINDOW_HEIGHT)
	 end

	 def finish
	 		@finished = true 
	 end

	 def finished?
	 		@finished
	 end

	 private 

	 def text_message
	 	if finished?
	 		"Game is finished your score is:- #{score}, Press R to restart"
	 	else
	 		"Score:- #{score}"
	 	end
	 end 
end