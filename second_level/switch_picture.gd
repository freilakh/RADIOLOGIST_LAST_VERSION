extends Button
@onready var picture_1: Sprite2D = $"../Area2D/Picture_1"
@onready var picture_2: Sprite2D = $"../Area2D/Picture_2"
func _pressed():
	if picture_2.visible:
		picture_2.visible = false
	else:
		picture_2.visible = true
