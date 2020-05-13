extends Area2D

var length_list=[-80,-70,-100]
var length     =length_list[randi()%length_list.size()]

func _ready():
	randomize()
	position.y=length
	
func _process(delta):
	position.x-=1
	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	



func _on_Area2D_body_entered(body):
	#global.save_score()
	get_tree().change_scene("res://game_over.tscn")
	#get_tree().quit()
	#Engine.time_scale(0.1)







func _on_counter_collision_body_entered(body):
	if body.name=='RigidBody2D':
		global.score+=1
		print('entered = ',body.name)
	pass # Replace with function body.
