extends Node2D


func _process(delta):
	$highscore_label.text="Highscore : "+str(global.savedscore)

#  'delta' is the elapsed time since the previous frame.

func _on_start_pressed():
	get_tree().change_scene("res://main_window.tscn")


func _on_credits_pressed():
	get_tree().change_scene("res://credits.tscn")


func _on_quit_pressed():
	get_tree().quit()


