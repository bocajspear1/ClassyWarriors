extends Sprite

export var slot_id = -1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Control_mouse_entered():
	$SelectGlow.show()


func _on_Control_mouse_exited():
	$SelectGlow.hide()
