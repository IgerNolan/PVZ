extends Node2D
@export var speed : float=500
@export var damage : int=20
@export var High=0

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	position.x+=speed*delta
	position.y=High
	if abs(global_position.x)>800:
		queue_free()
