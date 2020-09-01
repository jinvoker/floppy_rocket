extends Area2D

var length_list=[152,160,180,200,170]

export var obstacle_speed=0.6

func _ready():
	randomize()
	var length =length_list[randi()%length_list.size()]
	position.y=length
	
func _process(delta):
	position.x-=obstacle_speed # speed of the obstacle
	
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://game_over.tscn")

