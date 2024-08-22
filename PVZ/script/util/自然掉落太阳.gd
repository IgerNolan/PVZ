extends Node2D
@export var Sun_X = 0
@export var Sun_Y = 0

var sun_begin : int = 50
var sun_cost : int = 50

func _ready() -> void:
	Data.SunNum = sun_begin

func _process(delta:float) -> void:
	rotation_degrees += 1
	position.x = Sun_X
	if position.y < Sun_Y :
		position.y += 0.5

func kill_self():
	Data.SunNum += sun_cost
	queue_free()

func slot_Sun_Hover():
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", Vector2(50, 35), 0.5).set_ease(Tween.EASE_IN_OUT)
	tween.connect("finished", kill_self)
