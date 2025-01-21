class_name MainMenu
extends Control

@onready var start_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button
@onready var item_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Item_Button
@onready var option_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Option_Button
@onready var exit_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/Exit_Button
@onready var start_level = preload("res://scenes/sortingmenu/sorting_menu.tscn") as PackedScene
@onready var open_options = preload("res://scenes/optionmenu/option_menu.tscn") as PackedScene
func _ready():
	start_button.button_up.connect(on_start_pressed)
	item_button.button_up.connect(on_item_pressed)
	option_button.button_up.connect(on_option_pressed)
	exit_button.button_up.connect(on_exit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_item_pressed() -> void:
	get_tree().quit()

func on_option_pressed() -> void:
	get_tree().change_scene_to_packed(open_options)

func on_exit_pressed() -> void:
	get_tree().quit()
