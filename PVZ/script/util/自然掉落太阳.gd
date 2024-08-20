extends Node2D
@export var Sun_X=0
@export var Sun_Y=0
@onready var sun_bank : Sprite2D = $SunBank

var sun_begin:int=50
var sun_num:int=50
# Called when the node enters the scene tree for the first time.
func _ready()->void:
	sun_num=sun_begin


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float)->void:
	pass
	
	rotation_degrees += 1
	position.x=Sun_X
	if position.y<Sun_Y :
		position.y += 0.5


func kill_self():
	SunNum.SunNum += 50
	queue_free()


func slot_Sun_Clicked():
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", Vector2(80, 80), 0.5).set_ease(Tween.EASE_IN_OUT)
	tween.connect("finished", kill_self)
