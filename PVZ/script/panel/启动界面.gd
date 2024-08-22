extends Node2D


func _ready():
	pass

func _process(delta):
	pass

func slot_Title_Main():
	get_tree().change_scene_to_file("res://scene/panel/主界面.tscn")
