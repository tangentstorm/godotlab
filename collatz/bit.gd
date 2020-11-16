extends Sprite

func _ready():
	get_node("Area2D").connect("input_event",self,"_on_Area2D_input_event")


func _on_Area2D_input_event( viewport, event, shape_idx ):
	if (event is InputEventMouseButton and not event.pressed):
		frame = 1 if frame == 2 else 1 - frame
