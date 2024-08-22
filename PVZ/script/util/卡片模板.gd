extends TextureButton


@export var cardPic : Texture2D
@export var dragPic : Texture2D
@export var cardID : int
@export var sunCost : int

# Called when the node enters the scene tree for the first time.
func _ready():
	$card.texture = cardPic
	$Lbl_sunCost.text = str(sunCost)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if SunNum.SunNum < sunCost:
		modulate = Color8(100, 100, 100, 255)
	else:
		modulate = Color8(255, 255, 255, 255)


func _get_drag_data(_at_position):
	if SunNum.SunNum < sunCost:
		return
	else:
		var currnetCard = TextureRect.new()
		currnetCard.texture = dragPic
		currnetCard.scale = Vector2(0.5, 0.5)
		currnetCard.pivot_offset = -(currnetCard.get_minimum_size() / 2)
		set_drag_preview(currnetCard)
		return currnetCard
