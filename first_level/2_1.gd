extends Button
@onready var description: TabBar = $"../.."

func _pressed() -> void:
	description.answ_2 = 'свинина'
