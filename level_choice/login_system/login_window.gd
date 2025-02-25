extends Control

var username 
var password

var created =false

func _on_login_button_button_down() -> void:
	if !created:
		username = $TextureRect/MarginContainer/VBoxContainer/username.text
		password = $TextureRect/MarginContainer/VBoxContainer/password.text.sha256_text()
		created = true
		$TextureRect/MarginContainer/VBoxContainer/login_button.text = "ЗАРЕГЕСТРИРОВАТЬСЯ"
		$TextureRect/MarginContainer/VBoxContainer/username.text = ""
		$TextureRect/MarginContainer/VBoxContainer/password.text = ""
		print("CREATED!!!")
	else:
		if $TextureRect/MarginContainer/VBoxContainer/username.text == username:
			if $TextureRect/MarginContainer/VBoxContainer/password.text.sha256_text() == password:
				print("SUCCESS")
				get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
			else:
				print("FAIL")
		else:
				print("FAIL")
