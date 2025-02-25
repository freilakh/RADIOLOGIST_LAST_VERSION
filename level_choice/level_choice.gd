class_name SelectionLevelMenu
extends Control

@onready var start_button = $"TextureRect/MarginContainer/VBoxContainer/1_level" as Button
@onready var exit_button = $TextureRect/MarginContainer/VBoxContainer/exit as Button
@export var first_level = preload("res://first_level/first_level.tscn")
signal exit_level_selection

func _ready() -> void:
	start_button.button_down.connect(f_l)
	exit_button.button_down.connect(exit_button_pressed)
	set_process(false)
 
func exit_button_pressed() -> void:
	exit_level_selection.emit()
	set_process(false)
	
func f_l() -> void:
	get_tree().change_scene_to_packed(first_level)
