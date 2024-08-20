extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func slot_Main_Adventure():
	get_tree().change_scene_to_file("res://scene/冒险模式1-1.tscn")
