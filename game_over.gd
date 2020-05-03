extends Node




func _on_play_again_pressed():
	get_tree().change_scene("res://main_window.tscn")
	


func _on_quit_pressed():
	get_tree().quit()
	


func _on_main_menu_pressed():
	get_tree().change_scene("res://start_menu.tscn")
	pass # Replace with function body.
