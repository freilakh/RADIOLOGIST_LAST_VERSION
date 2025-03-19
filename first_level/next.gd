extends Button
@onready var _1_test_box: VBoxContainer = $"../1 test box"
@onready var _2_test_box: VBoxContainer = $"../2 test box"

func _pressed():
	_1_test_box.visible = false
	_2_test_box.visible = true
