extends Node2D


var score=0
var rocketselect=[]
var savedscore=0


func _process(delta):


	load_score()

	
	if score > savedscore:
		save_score()
		
func save_score():
	var file=File.new()
	file.open("user://score.txt",file.WRITE_READ)
	file.store_var(score)
	file.close()
	
	
func load_score():
	var file=File.new()
	if not file.file_exists("user://score.txt"):
		print('savefile dosent exist')
	
	else:
		file.open("user://score.txt",file.READ)
		savedscore=file.get_var()
		file.close()
