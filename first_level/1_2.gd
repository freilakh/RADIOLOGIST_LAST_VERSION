extends Button
@onready var description: TabBar = $"../.."
@onready var _1_2: Button = $"."

func _pressed() -> void:
	description.chosen_answers[description.current_index] = _1_2.text
