extends Node2D
@export var Sun_count:int=50
# Called when the node enters the scene tree for the first time.
func _ready():	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$SeedBank/Lbl_SunNum.text = str(Data.SunNum)
