extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var texture_button: TextureButton = $TextureButton

var shovel : bool=false
#var mouse : Vector2 = get_local_mouse_position

func _ready() -> void:
	texture_button.pressed.connect(
		func () -> void:
			if shovel == false:
				shovel = true
				texture_button.global_position
				
	)
