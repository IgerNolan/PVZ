extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var random = RandomNumberGenerator.new
	random.randomize()
	position.y = -100
	position.x = random.randi_range(200, 800)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation_degrees += 1
	position.y += 2


func kill_self():
	SunNum.SunNum += 50
	queue_free()


func slot_Sun_Clicked():
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", Vector2(80, 80), 0.5).set_ease(Tween.EASE_IN_OUT)
	tween.connect("finished", kill_self)
