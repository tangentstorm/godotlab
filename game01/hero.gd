extends Sprite

const SPEED = 10

# dvorak layout
const K_UP = KEY_COMMA  # w
const K_LF = KEY_A       # a 
const K_DN = KEY_O       # s
const K_RT = KEY_E       # d

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var diff = Vector2()
	
	# vertical:
	if Input.is_key_pressed(K_UP):
		diff.y -= SPEED
	elif Input.is_key_pressed(K_DN):
		diff.y += SPEED
	# horizontal
	if Input.is_key_pressed(K_LF):
		diff.x -= SPEED
	elif Input.is_key_pressed(K_RT):
		diff.x += SPEED
		
	position += diff
	
	var crosshair = get_parent().get_node("crosshair")
	if diff != Vector2.ZERO:
		crosshair.position += diff
		
	# even if we don't move, look at the mouse
	rotation = position.angle_to_point(crosshair.position)
		