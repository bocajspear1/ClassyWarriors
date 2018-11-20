extends Node

const SLOT_SIZE = 66

var items = []

export var row_count = 2
export var col_count = 8

var max_items = row_count * col_count


func get_item_position(index):
	var y  = SLOT_SIZE/2
	var x = SLOT_SIZE/2
	
	if index >= col_count:
		y += SLOT_SIZE
		
	x += (index % col_count) * SLOT_SIZE

	return Vector2(x, y)

func _ready():
	max_items = row_count * col_count
	self.rect_size = Vector2(SLOT_SIZE*col_count, SLOT_SIZE*row_count)
	
func add_item_to_inventory(item):
	if len(items) <= max_items:
		# Reparent the item to us
		var parent = item.get_parent()
		if parent != null:
			parent.remove_child(item)
		
		add_child(item)
		
		
		# Find a spot to put the item
		for i in range(max_items):
			if i+1 > len(items):
				items.append(item)
				item.position = get_item_position(i)
				item.slot_id = i
				return true
			elif items[i] == null:
				items[i] = item
				item.position = get_item_position(i)
				item.slot_id = i
				return true
		return false
	else:
		return false

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
