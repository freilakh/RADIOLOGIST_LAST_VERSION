class_name SelectionLevelMenu
extends Control

@onready var exit_button = $MarginContainer/VBoxContainer/exit as Button

signal exit_level_selection
func _ready() -> void:
	exit_button.button_down.connect(exit_button_pressed)
	set_process(false)
	
func exit_button_pressed() -> void:
	exit_level_selection.emit()
	set_process(false)
