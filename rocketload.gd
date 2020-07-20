extends Node2D

var rocketlist=['res://sprites/rockets/rocket.png','res://sprites/rockets/rocket_1.png','res://sprites/rockets/rocket_2.png'] # Absolute path of rocketfile to be loaded.
var y=35  # Vertical distance between rockets in selection screen (start).

var count=1

var list2=[]

func _ready():
	add_buttons()
	pass 



func add_buttons():
	
	
	for item in rocketlist:


		var but=Button.new()
		
		but.set_size(Vector2(32,32))
		but.set_position(Vector2(50,y))
		but.set_text(item)
		but.set_clip_text(true)
		but.set_button_icon(load(item))
		but.set_flat(true)
		but.connect("pressed",self,'namer',[but])
		add_child(but)
		
		y+=45

		count+=1 #Debug
		
func namer(which):
	print(which.get_text()) 
	global.rocketselect=which.get_text()   
	get_tree().change_scene("res://main_window.tscn")
