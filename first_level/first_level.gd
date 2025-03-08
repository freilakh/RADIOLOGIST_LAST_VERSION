extends Control
@onready var message = $message_label as Label
@onready var exit_level = $exit_level as Button
@export var Choice = preload("res://level_choice/level_choice.tscn")

func _ready() -> void:
 message_start()
func message_start() -> void:
 message.visible = false
func show_message(text:String) -> void:
 message.text=text
 var timer := Timer.new()
 add_child(timer)
 timer.wait_time = 3.0
 timer.one_shot = true
 message.visible = true
 timer.start()
 timer.connect("timeout",_timeout)

func _timeout() -> void:
 message.visible = false

func _on_exit_level_button_down() -> void:
 get_tree().quit()
