extends Control

@onready var  start_button = $"TabContainer/ВВОДНЫЙ БЛОК/MarginContainer/1_case" as Button
@export var first_case = preload("res://first_level/first_level.tscn") as PackedScene

func _on__case_button_down() -> void:
	get_tree().change_scene_to_packed(first_case) 
