extends TabBar

@onready var start_test: Button = $"Start test"
@onready var back: Button = $Back
@onready var next: Button = $Next
@onready var _1_test_box: VBoxContainer = $"1 test box"
@onready var _2_test_box: VBoxContainer = $"2 test box"
@onready var _3_test_box: VBoxContainer = $"3 test box"
@onready var lock: Sprite2D = $lock
@onready var descr_list: Label = $descr_list
@onready var _1_question: Label = $"1 test box/1 Question"
@onready var _1_1: Button = $"1 test box/1_1"
@onready var _1_2: Button = $"1 test box/1_2"
@onready var _1_3: Button = $"1 test box/1_3"


var answ_1 = ''
var answ_2 = ''
var answ_3 = ''

func _ready() -> void:
	start_test.visible = false
	back.visible = false
	next.visible = false
	_1_test_box.visible = false
	_2_test_box.visible = false
	_3_test_box.visible = false



func _process(delta: float) -> void:
	descr_list.text = 'Булочка: ' + answ_1 + '\n' + 'Котлета: ' + answ_2 + '\n' + 'Соус: ' + answ_3
	
