extends Button
@onready var start_test: Button = $"."
@onready var _1_test_box: VBoxContainer = $"../1 test box"
@onready var next: Button = $"../Next"

func _pressed():
	start_test.visible = false
	_1_test_box.visible = true
	next.visible = true
