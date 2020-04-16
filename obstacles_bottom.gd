extends Area2D

var length_list=[160,180,200]
var length     =length_list[randi()%length_list.size()]

func _ready():
	randomize()
	position.y=length
	
func _process(delta):
	position.x-=1
	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://game_over.tscn")
	
	#get_tree().quit()
	#Engine.time_scale(0.1)
