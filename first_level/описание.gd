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

var questions = [
	'Какая булочка?',
	'Из какого мяса котлета?',
	'Какой будет соус?'
]
var answers_1 = [
	'Кунжутная',
	'Свинина',
	'Кетчуп'
]
var answers_2 = [
	'Бородинская',
	'Говядина',
	'Барбекю'
]
var answers_3 = [
	'Кукурузная',
	'Индейка',
	'Горчица'
]
var current_index = 0

func _ready() -> void:
	update_question()
	update_buttons()
	start_test.visible = false
	back.visible = false
	next.visible = false
	_1_test_box.visible = false
	_2_test_box.visible = false
	_3_test_box.visible = false


func update_question():
	_1_question.text = questions[current_index]
	_1_1.text = answers_1[current_index]
	_1_2.text = answers_2[current_index]
	_1_3.text = answers_3[current_index]


func update_buttons():
	back.disabled = current_index == 0
	next.disabled = current_index == questions.size() - 1
	
	
func _on_next_button_pressed():
	if current_index < questions.size() - 1:
		current_index += 1
		update_question()
		update_buttons()
	
#func _process(delta: float) -> void:
#	descr_list.text = 'Булочка: ' + answ_1 + '\n' + 'Котлета: ' + answ_2 + '\n' + 'Соус: ' + answ_3
	
