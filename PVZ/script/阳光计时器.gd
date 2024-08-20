extends Node2D

signal sig_generateSun

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer_Sun.start(10)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func slot_timeout():
	sig_generateSun.emit()
