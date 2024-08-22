extends TextureButton

@export var res_card : Resource

# Called when the node enters the scene tree for the first time.
func _ready():
	$Lbl_sunCost.text = str(res_card.sunCost)
	$card.texture = res_card.cardPic


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Data.SunNum < res_card.sunCost:
		modulate = Color8(100, 100, 100, 255)
	else:
		modulate = Color8(255, 255, 255, 255)


func _get_drag_data(_at_position):
	if Data.SunNum < res_card.sunCost:
		return
	else:
		var currnetCard = TextureRect.new()
		currnetCard.texture = res_card.dragPic
		currnetCard.scale = Vector2(0.5, 0.5)
		currnetCard.pivot_offset = -(currnetCard.get_minimum_size() / 2)
		set_drag_preview(currnetCard)
		Data.currentCardID = res_card.cardID
		return currnetCard
