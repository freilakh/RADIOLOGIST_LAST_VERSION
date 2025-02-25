extends Node

const SAVE_DATA_PATH : String = "user://user_answers.save"


func save_new_answers_list(save_data : Dictionary) -> void:
	var new_save_file : FileAccess
	if FileAccess.file_exists(SAVE_DATA_PATH) == false:
		new_save_file = FileAccess.open(SAVE_DATA_PATH, FileAccess.WRITE)
	else:
		new_save_file = FileAccess.open(SAVE_DATA_PATH, FileAccess.READ_WRITE)
		new_save_file.store_var(save_data)

func load_saved_data() -> Dictionary:
	var file_to_load : FileAccess
	if FileAccess.file_exists(SAVE_DATA_PATH) == false:
		var emptydict : Dictionary = {}
		return emptydict
	file_to_load = FileAccess.open(SAVE_DATA_PATH, FileAccess.READ)
	var loaded_data_dictionary : Dictionary = file_to_load.get_var()
	return loaded_data_dictionary
