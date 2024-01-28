extends StaticBody2D
var hovering = false
var chosen = false
var destroyed = true

# Called when the node enters the scene tree for the first time.
func _ready():
	input_pickable = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if hovering and Input.is_action_just_pressed("select"):
		if !chosen and destroyed:
			var parent = get_parent()
			var destroy = parent.get_node("char1_body")
			destroy.queue_free()
			destroy = parent.get_node("char3_body")
			destroy.queue_free()
			destroyed = false
		chosen = !chosen


func _on_mouse_entered():
	$box.texture = load("res://sprites/select.png")
	hovering = true


func _on_mouse_exited():
	if !chosen:
		$box.texture = null
	hovering = false
