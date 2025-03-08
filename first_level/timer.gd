extends Node

func _ready():
	$Timer.start()
func on_Timer_timeout():
	$Label.text = "DONE"
