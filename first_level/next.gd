extends Button
@onready var description: TabBar = $".."


func _pressed():
	description.current_index += 1
