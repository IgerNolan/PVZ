extends Node2D

func _ready():	
	pass

func _process(delta):
	$SeedBank/Lbl_SunNum.text = str(Data.SunNum)
