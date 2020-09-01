extends Sprite


func _process(delta):
	if Input.is_action_just_pressed("flap"):
		get_tree().change_scene("res://start_menu.tscn")
		
		
	yield(get_tree().create_timer(1),"timeout")
	$Light2D.visible=true 
	
	if $zero.global_position.y < 127:
		$zero.position.y+=4
		
	if $game.global_position.x <38:
		$game.position.x+=4
		
	if $studio.global_position.x >95:
		$studio.position.x-=4



func _on_Timer_timeout():
	get_tree().change_scene("res://start_menu.tscn")

