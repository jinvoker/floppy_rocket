extends Node2D


var obstacle_top_load = preload("res://obstacles_top.tscn")
var obstacle_bot_load = preload("res://obstacles_bottom.tscn")




func _ready():
	global.score=0
	


func _on_Timer_timeout():
	var obstacle_top_obj = obstacle_top_load.instance()
	var obstacle_bot_obj = obstacle_bot_load.instance()
	add_child(obstacle_top_obj)
	add_child(obstacle_bot_obj)


func _physics_process(delta):
	$Label.text="score : " + str(global.score)









func _on_pause_button_pressed():
	get_tree().set_pause(true)
	$TextureRect.visible=true

	
	
