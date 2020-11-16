tool extends Node2D

export(int) var width=8;

func _ready():
	pass
	
func _draw():
	draw_rect(Rect2(0,0,width*32,32), Color.red, true)
