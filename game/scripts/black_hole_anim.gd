extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	anim()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func anim():
	for i in range(3):
		await get_tree().create_timer(0.1).timeout
		var hold = "res://animations/BH" + str(i) + ".PNG"
		texture = load(hold)
	anim()
