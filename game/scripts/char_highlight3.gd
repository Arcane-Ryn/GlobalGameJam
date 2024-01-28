extends StaticBody2D
var hovering = false

# Called when the node enters the scene tree for the first time.
func _ready():
	input_pickable = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	$box.texture = load("res://sprites/select.png")
	hovering = true


func _on_mouse_exited():
	$box.texture = null
	hovering = false
