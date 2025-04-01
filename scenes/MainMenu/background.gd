extends TextureRect


func _input(event):
	if event.is_action_pressed("ui_left"):
		self.position.x += 1920
	
	if event.is_action_pressed("ui_right"):
		self.position.x -= 1920
		
