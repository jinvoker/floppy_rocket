extends TextureRect


func _ready():
	get_tree().set_pause(true)
	
# Called when the node enters the scene tree for the first time.
func _process(delta):
		
		if Input.is_action_just_pressed("flap"):
			get_tree().set_pause(false)
			
			visible=false
			
