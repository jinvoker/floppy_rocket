extends RigidBody2D





func _ready():
	
	#set_linear_velocity(Vector2(70,get_linear_velocity().y))
	set_angular_velocity(1)

	
	pass # Replace with function body.



func _process(delta):
	#set_linear_velocity(Vector2(70,get_linear_velocity().y))
	

	
	if Input.is_action_just_pressed("flap"):
		set_linear_velocity(Vector2(get_linear_velocity().x, -150)) # Upward direction
		set_angular_velocity(-5)
		$AudioStreamPlayer.play(0.0)
		
	#if get_linear_velocity().x < 60:
		#set_linear_velocity(Vector2(70,get_linear_velocity().y)) # needs some tweaking and logic analysis.
		
		
	
		

		
	
		
		
	if get_rotation_degrees() < -70:
		set_angular_velocity(5)
		
	#if get_rotation_degrees() > 800:
		#set_angular_velocity(-1)	
	
		
	#print(get_rotation_degrees())
	#print(position.x)
	#print(get_linear_velocity().x)
		
	
		
#func _input(event):
	#if event.is_action_pressed("flap"):
		#set_linear_velocity(Vector2(get_linear_velocity().x, -150))
		#set_angular_velocity(-4)
		#$AudioStreamPlayer.play(0.0)
		
	














