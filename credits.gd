extends Node2D



func _process(delta):
	position.y-=.5
	
	if Input.is_action_just_pressed("flap"):
		get_tree().change_scene("res://start_menu.tscn")
		
