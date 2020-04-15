extends Node2D


var obstacle_top_load = preload("res://obstacles_top.tscn")
var obstacle_bot_load = preload("res://obstacles_bottom.tscn")






func _on_Timer_timeout():
	var obstacle_top_obj = obstacle_top_load.instance()
	var obstacle_bot_obj = obstacle_bot_load.instance()
	add_child(obstacle_top_obj)
	add_child(obstacle_bot_obj)
	
