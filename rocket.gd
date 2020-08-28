# Dynamically load the selected rocket
extends RigidBody2D

var rockettexture=load(str(global.rocketselect))

export var angvel=5      # angularvelocity
export var rotdeg=70     # rotation degrees
export var couvel= 3      # counter velocity

func _ready():
	print('rocket=',global.rocketselect)
	$Sprite.set_texture(load(global.rocketselect))
	$AudioStreamPlayer2D.play(0.0)

	
	set_angular_velocity(1) # initial downward angular velocity

	




func _process(delta):
	
	if Input.is_action_just_pressed("flap"):
		set_linear_velocity(Vector2(get_linear_velocity().x, -150)) # Upward direction 
		set_angular_velocity(-angvel) #5
		$AudioStreamPlayer.play(0.0)
		
	#if get_linear_velocity().x < 60:
		#set_linear_velocity(Vector2(70,get_linear_velocity().y)) # needs some tweaking and logic analysis.
				
		
	if get_rotation_degrees() < -rotdeg:   #70
		set_angular_velocity(couvel) #5
		

	


func _on_VisibilityNotifier2D_screen_exited():
	get_tree().change_scene("res://game_over.tscn")
	
	
