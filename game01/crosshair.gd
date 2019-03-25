extends Sprite

var oldmouse = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	get_viewport().warp_mouse(position)
	oldmouse = position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var newmouse = get_global_mouse_position() / 2
	if newmouse != oldmouse:
		position += (newmouse - oldmouse)
	oldmouse = newmouse

