extends Sprite

const SPEED = 50

const R = Vector2(+1, 0)
const L = Vector2(-1, 0)
const U = Vector2(0, -1)
const D = Vector2(0, +1)

var velocity = Vector2(0,0)
var friction = 0.975   # should be <0, scales velocity at each step

func _process(delta):
	position += delta * velocity
	
	if Input.is_action_pressed("ui_right"):
		velocity += R * SPEED
	if Input.is_action_pressed("ui_left"):
		velocity += L * SPEED
	if Input.is_action_pressed("ui_up"):
		velocity += U * SPEED
	if Input.is_action_pressed("ui_down"):
		velocity += D * SPEED
	
	velocity *= friction
		
