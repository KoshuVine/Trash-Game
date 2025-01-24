extends Node

var json = JSON.new()
var path = "user://save.json"
var default_save_path = "res://resources/default_save.json"
var to_save = {}

func save_file(content):
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(json.stringify(content))
	file.close()
	file = null

func read_file():
	var file = FileAccess.open(path, FileAccess.READ)
	var content = json.parse_string(file.get_as_text)
	return content
	
func new_save():
	var file = FileAccess.open(default_save_path, FileAccess.READ)
	var content = json.parse_string(file.get_as_text)
	to_save = content;
	save_file(to_save);
