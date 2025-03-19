extends Button
@onready var correct_or_mine: Button = $"."
@onready var mine_answer: Sprite2D = $"../Area2D/mine_answer"
@onready var check_draw: Button = $"../check_draw"
@onready var clear_draw: Button = $"../clear_draw"
var block_drawing = false

func _ready() -> void:
	correct_or_mine.visible = false
	
func _pressed():
	if correct_or_mine.text == 'Мой ответ':
		correct_or_mine.text = 'Правильный ответ'
		mine_answer.visible = true
		check_draw.visible = true
		clear_draw.visible = true
		block_drawing = false
	else:
		correct_or_mine.text = 'Мой ответ'
		mine_answer.visible = false
		check_draw.visible = false
		clear_draw.visible = false
		block_drawing = true
