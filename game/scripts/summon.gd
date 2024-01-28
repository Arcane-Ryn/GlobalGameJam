extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	first_object(100)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
var rng = RandomNumberGenerator.new()
var projectiles = ["proj1", "proj2", "proj3", "proj4", "proj5", "proj6", "proj7", "proj8", "proj9"]
#var ranges = [[200, 400], [200, 400], [200, 400], [200, 400]]
	
func first_object(count):
	if count == 0:
		return
	await get_tree().create_timer(1).timeout
	var num = rng.randf_range(0, projectiles.size())
	var proj = projectiles[num]
	proj = proj + "/CharacterBody2D"
	var node = get_node(proj)
	var new_node = node.duplicate()
	new_node.position.x = 1000
	new_node.position.y = rng.randf_range(200, 400)
	add_child(new_node)
	count -= 1
	first_object(count)
