extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_overlapping_areas():
		var parent = get_parent()
		if parent.position.x < -400:
			parent = parent.get_parent()
			parent.queue_free()
			return
		parent.freeze()
		parent.velocity = Vector2(-2000, -200)
