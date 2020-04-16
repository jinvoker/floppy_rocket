extends Node2D


func _ready():
	if global.score > global.highscore:
		global.highscore=global.score
	$highscore_label.text="Highscore : "+str(global.highscore)

#  'delta' is the elapsed time since the previous frame.

func _on_start_pressed():
	get_tree().change_scene("res://main_window.tscn")


func _on_credits_pressed():
	get_tree().change_scene("res://credits.tscn")


func _on_quit_pressed():
	get_tree().quit()


