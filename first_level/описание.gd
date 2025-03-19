extends TabBar

@onready var start_test: Button = $"Start test"
@onready var back: Button = $Back
@onready var next: Button = $Next
@onready var _1_test_box: VBoxContainer = $"1 test box"
@onready var lock: Sprite2D = $lock
@onready var descr_list: Label = $descr_list
@onready var _1_question: Label = $"1 test box/1 Question"
@onready var _1_1: Button = $"1 test box/1_1"
@onready var _1_2: Button = $"1 test box/1_2"
@onready var _1_3: Button = $"1 test box/1_3"
@onready var finish: Button = $finish

var questions = {
	'Какая на снимке область новообразования?': ['Парафациальная', 'Конвекситальная', 'Тенториальная'],
	'Что это за тип новообразования?': ['Гематома', 'Метастаз', 'Менингиома'],
	'Новообразование является доброкачественным или злокачественным?': ['Доброкачественное', 'Злокачественное', ''],
	'Есть ли отёк?': ['Да', 'Нет', '']
	}
var current_index = 0
var chosen_answers = ['', '', '', '']

func update_question():
	_1_question.text = questions.keys()[current_index]
	_1_1.text =  questions.get(questions.keys()[current_index])[0]
	_1_2.text =  questions.get(questions.keys()[current_index])[1]
	_1_3.text =  questions.get(questions.keys()[current_index])[2]


func update_buttons():
	if current_index == 0:
		back.visible = false
		finish.visible = false
	elif current_index == questions.size() - 1:
		next.visible = false
		finish.visible = true
	else:
		back.visible = true
		next.visible = true
		finish.visible = false
		
 
func _process(delta: float) -> void:
	_1_3.visible = true
	update_question()
	update_buttons()
	if _1_3.text == '':
		_1_3.visible = false
	descr_list.text = 'Область новообразования: ' + chosen_answers[0] + '\n' + 'Тип новообразования: ' + chosen_answers[1] + '\n' + 'Качество образования: ' + chosen_answers[2] + '\n' + 'Наличие отёка: ' + chosen_answers[3]
	
