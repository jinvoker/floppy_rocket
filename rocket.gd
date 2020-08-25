# Dynamically load the selected rocket
extends RigidBody2D

var rockettexture=load(str(global.rocketselect))




func _ready():
	print('rocket=',global.rocketselect)
	$Sprite.set_texture(load(global.rocketselect))
	$AudioStreamPlayer2D.play(0.0)

	
	set_angular_velocity(1)

	




func _process(delta):
	
	if Input.is_action_just_pressed("flap"):
		set_linear_velocity(Vector2(get_linear_velocity().x, -150)) # Upward direction
		set_angular_velocity(-5)
		$AudioStreamPlayer.play(0.0)
		
	#if get_linear_velocity().x < 60:
		#set_linear_velocity(Vector2(70,get_linear_velocity().y)) # needs some tweaking and logic analysis.
				
		
	if get_rotation_degrees() < -70:
		set_angular_velocity(5)
		

	


func _on_VisibilityNotifier2D_screen_exited():
	get_tree().change_scene("res://game_over.tscn")
	
	
