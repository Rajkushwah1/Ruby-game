class Snake
	@@count = 0 
	attr_accessor :direction, :positions

	def initialize 
		@positions = [[1,1],[1,2]]
		@direction = 'down'
		@growing = false
	end

	def draw
		@positions.each do | position | 
			Square.new(x: position[0] * GRID, y: position[1] * GRID, size: GRID - 1, color: 'white')
			# Image.new('snake.png', x: position[0] * GRID, y: position[1] * GRID, width: GRID, height: GRID)
		end 
	end

	def move
		unless @growing 
			@positions.shift # [[1,2]]
		end
		case @direction
		when 'down'
			@positions.push(screen_coordinate(head[0], head[1] + 1))
		when 'up'
			@positions.push(screen_coordinate(head[0], head[1] - 1))
		when 'right'
			@positions.push(screen_coordinate(head[0] + 1, head[1]))
		when 'left'
			@positions.push(screen_coordinate(head[0] - 1, head[1]))
		end
		@growing = false
	end

	def check_snake_direction?(new_direction)
		case @direction
		when 'up' then new_direction != 'down'
		when 'left' then new_direction != 'right'
		when 'down' then new_direction != 'up' 
		when 'right' then new_direction != 'left'
		end
	end

	def x 
		head[0]
	end 

	def y 
		head[1]
	end 

	def increse_snake_height
		# @positions.push(screen_coordinate(head[0], head[1] + 1))
		boom1 = Sound.new('mp3/hiss3.mp3')
		boom1.play
		@growing = true
	end 

	def hit_its_own_body?
		if @positions.uniq.length != @positions.length
			@finished = true  
		end
	end

	private
	
	def head
		@positions.last
	end

	def screen_coordinate(x, y) 
		[ x % WINDOW_WIDTH, y % WINDOW_HEIGHT]
	end 
end 