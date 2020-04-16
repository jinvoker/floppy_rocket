extends TextureRect




func _on_resume_pressed():
	get_tree().set_pause(false)
	hide()
	pass # Replace with function body.





func _on_quit_pressed():
	get_tree().quit()
	
