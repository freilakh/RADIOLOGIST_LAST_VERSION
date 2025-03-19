extends Button
@onready var start_test: Button = $"."
@onready var back: Button = $"../Back"
@onready var _1_test_box: VBoxContainer = $"../1 test box"
@onready var next: Button = $"../Next"
@onready var descr_list: Label = $"../descr_list"
@onready var finish: Button = $"../finish"

func _ready() -> void:
	start_test.visible = false
	back.visible = false
	next.visible = false
	_1_test_box.visible = false
	descr_list.visible = false
	finish.visible = false


func _pressed():
	start_test.visible = false
	_1_test_box.visible = true
	next.visible = true
	descr_list.visible = true
	
