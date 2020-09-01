extends Area2D

var length_list=[-80,-100,-120,-70,-60,]
export var obstacle_speed=0.6

func _ready():
	randomize()
	var length=length_list[randi()%length_list.size()]
	position.y=length
	
func _process(delta):
	position.x-=obstacle_speed # speed of the obstacle
	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://game_over.tscn")







func _on_counter_collision_body_entered(body):
	if body.name=='RigidBody2D':
		global.score+=1
		$AudioStreamPlayer.play(0.0)
		#print('entered = ',body.name) # Debug- prints the area entered
	
