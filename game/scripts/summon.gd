extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	first_object(0v)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
var rng = RandomNumberGenerator.new()
	
func first_object(count):
	if count == 0:
		return
	await get_tree().create_timer(2).timeout
	var node = $death/CharacterBody2D
	var new_node = node.duplicate()
	new_node.position.x = 1000
	new_node.position.y = rng.randf_range(300.0, 400.0)
	add_child(new_node)
	count -= 1
	first_object(count)
