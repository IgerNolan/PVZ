extends Node2D

@export var SkySun : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var Sun = get_child(4)
	Sun.connect("sig_generateSun", Callable(self, slot_sun_timeout()))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func slot_sun_timeout():
	var SkySun = SkySun.instantiate()
	$SkySun.add_child(SkySun)
