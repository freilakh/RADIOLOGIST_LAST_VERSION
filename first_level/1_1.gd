extends Button
@onready var description: TabBar = $"../.."
@onready var _1_1: Button = $"."

func _pressed() -> void:
	description.chosen_answers[description.current_index] = _1_1.text
