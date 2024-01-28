extends StaticBody2D
var hovering = false

# Called when the node enters the scene tree for the first time.
func _ready():
	input_pickable = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if hovering and Input.is_action_just_pressed("select"):
		get_tree().change_scene_to_file("res://world.tscn")
		var parent = get_parent()
		###transfer info of character selection


func _on_mouse_entered():
	$start.texture = load("res://GUI/Hover.png")
	hovering = true


func _on_mouse_exited():
	$start.texture = load("res://GUI/Default.png")
	hovering = false
