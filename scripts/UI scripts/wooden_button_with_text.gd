extends TextureButton




var button_is_hovered: bool = false
var button_is_pressed: bool = false

# the scalings that will be used when the button enters said state
@export var hovered_scale_factor: float = 1.0
@export var pressed_scale_factor: float = 1.0
@export var disabled_scale_fator: float = 1.0
@export var normal_scael_factor: float = 1.0


func _ready():
	# On ready the pivot offset is set to the middle of the button
	# so scaling works from inside-out
	self.pivot_offset = Vector2(self.size.x / 2, self.size.y / 2)
	
	if self.is_disabled():
		self.scale = Vector2(disabled_scale_fator, disabled_scale_fator)
	else:
		self.scale = Vector2(normal_scael_factor, normal_scael_factor)
	


func _process(delta):
	pass

# when button is hovered this will activate
func _on_mouse_entered():
	# disabled buttons dont get scale changes
	if self.is_disabled():
		return
	
	# if the button is currently pressed we dont rescale, we just remeber, we are hovered
	if self.button_is_pressed:
		self.button_is_hovered = false
		return
	
	# if we are not hovered already scale
	if not self.button_is_hovered:
		self.button_is_hovered = true
		self.scale = Vector2(hovered_scale_factor, hovered_scale_factor)


# when button si no longer hobvered this is triggered
func _on_mouse_exited():
	# disabled buttons dont get scaled
	if self.is_disabled():
		return
	
	# if button si pressed just remember we got unhovered, dont scale
	if self.button_is_pressed:
		self.button_is_hovered = false
		return
		
	# if we were hovered, unhover and scale back
	if self.button_is_hovered:
		self.button_is_hovered = false
		self.scale = Vector2(normal_scael_factor, normal_scael_factor)



# get activated when button si hold down, means also when pressed
func _on_button_down():
	# disabled buttons dont get rescaled
	if self.is_disabled():
		return
	
	# if not already presses scale, dont care about hovering
	# pressed scale has prio
	if not self.button_is_pressed:
		self.button_is_pressed = true
		self.scale = Vector2(pressed_scale_factor, pressed_scale_factor)


# triggered when button gets released
func _on_button_up():
	# disabled buttons dont get rescaled
	if self.is_disabled():
		return
	
	# if we where pressed bevore scale back
	if self.button_is_pressed:
		self.button_is_pressed = false
		
		# if we are still hovered, scale to hovered scaling, else normal scaling
		if self.button_is_hovered:
			self.scale = Vector2(hovered_scale_factor, hovered_scale_factor)
		else:
			self.scale = Vector2(normal_scael_factor, normal_scael_factor)
			
