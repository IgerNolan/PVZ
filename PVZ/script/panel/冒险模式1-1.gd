extends Node2D

@export var Sun : PackedScene = preload("res://scene/util/自然掉落太阳.tscn")
@onready var sun_timer : Timer = $Sun_Timer

func _ready() -> void:
	randomize()
	sun_timer.wait_time = 10
	sun_timer.timeout.connect(
		func() -> void:
			_spawn_sun()
			sun_timer.wait_time = 10
			sun_timer.start()
	)
	sun_timer.start()

func _process(delta):
	pass

func _spawn_sun()->void:
	var skySun=Sun.instantiate()
	add_child(skySun)
	var Sun_position=randf_range(50,700)
	skySun.visible=true
	skySun.Sun_X=Sun_position
	skySun.Sun_Y=randf_range(100,550)