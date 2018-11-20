extends Node


var item_scene = load("res://Items/Item.tscn")

var our_party = []
var their_party = []

func _ready():
	our_party.append($Units/TestUnit)
	var new_item = item_scene.instance()
	new_item.set_name("TestItem")
	$Controls/Inventory.add_item_to_inventory(new_item)
	
	var new_item2 = item_scene.instance()
	new_item2.set_name("TestItem")
	$Controls/Inventory.add_item_to_inventory(new_item2)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_EndTurnButton_pressed():

	# Check if everybody has an action
	for unit in our_party:
		if unit.get_action() == null:
			return
			
	for unit in our_party:
		var action = unit.get_action()
		
		if action == unit.ATTACK:
			var damage = unit.get_damage()
		
	
	$Controls/TurnLabel.text = "Their Turn"
	yield(get_tree().create_timer(2),"timeout")
	$Controls/TurnLabel.text = "Our Turn"
	pass # replace with function body
