extends Node2D

export var upspeed=0.5

func _process(delta):
	translate(Vector2(0,-upspeed))
	
	if Input.is_action_just_pressed("flap"):
		get_tree().change_scene("res://start_menu.tscn")
		




func _on_VisibilityNotifier2D_viewport_exited(viewport):
	upspeed=0
	pass # Replace with function body.
