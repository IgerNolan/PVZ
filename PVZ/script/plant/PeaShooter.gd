extends Node2D
@export var Bullet:PackedScene=preload("res://scene/bullet/Bullet-Pea.tscn")
@onready var timer : Timer = $Timer

func _ready() -> void:
	timer.wait_time=1
	timer.timeout.connect(
		func()->void:
			spawn_pea()
			timer.wait_time=1.4
			timer.start()
	)
	timer.start()
	
func _process(delta: float) -> void:
	pass
	
func spawn_pea()->void:
	var bullet=Bullet.instantiate()
	add_child(bullet)
	bullet.High=global_position.y-300
