extends KinematicBody2D

export var ATTACK = 1
export var DEFEND = 2
export var SKILL_1 = 3
export var SKILL_2 = 4

var unit_hp = 100 # All units have 100 hp, this can be modified by items
var unit_inventory = []


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func get_damage():
	for item in unit_inventory:
		pass
		# For each item, calculate damage and damage type
		# return (phy_damage, magic_damage)
		
func get_defense():
	for item in unit_inventory:
		pass
		# For each item, calculate defense and defense type 

# Get the action this unit is going to do
func get_action():
	
	return null

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
