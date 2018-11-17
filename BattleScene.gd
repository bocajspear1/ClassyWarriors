extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_EndTurnButton_pressed():
	$Controls/TurnLabel.text = "Their Turn"
	yield(get_tree().create_timer(2),"timeout")
	$Controls/TurnLabel.text = "Our Turn"
	pass # replace with function body
