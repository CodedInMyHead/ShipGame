extends Camera2D



enum Possition {
	LEFT,
	MIDDLE,
	RIGHT
}

@export var current_possition: Possition = Possition.MIDDLE

var screen_width: int



# on ready, the camera gets placed in a starting possition, set by current_possition
func _ready():
	# get how big the screen width is
	screen_width = DisplayServer.screen_get_size().x
	
	# check the starting state
	if current_possition == Possition.LEFT:
		self.position = Vector2(-screen_width, 0)
	
	if current_possition == Possition.MIDDLE:
		self.position = Vector2(0, 0)
	
	if current_possition == Possition.RIGHT:
		self.position = Vector2(screen_width, 0)
	
	
# method to move the camera, to show a different part of the background
# arguments:
# - new_possition: possition the camera shall take, specified in an enum
func move_camera(new_possition: Possition):
	
	current_possition = new_possition
	
	if current_possition == Possition.LEFT:
		self.position = Vector2(-screen_width, 0)
	
	if current_possition == Possition.MIDDLE:
		self.position = Vector2(0, 0)
	
	if current_possition == Possition.RIGHT:
		self.position = Vector2(screen_width, 0)
	
# temporae method to change possition of camrea via arrow keys
func _input(event):
	if event.is_action_pressed("ui_left"):
		if current_possition == Possition.MIDDLE:
			move_camera(Possition.LEFT)
		elif current_possition == Possition.RIGHT:
			move_camera(Possition.MIDDLE)
	
	if event.is_action_pressed("ui_right"):
		if current_possition == Possition.MIDDLE:
			move_camera(Possition.RIGHT)
		elif current_possition == Possition.LEFT:
			move_camera(Possition.MIDDLE)
	
