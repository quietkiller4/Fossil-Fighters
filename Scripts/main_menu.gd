extends Control

@onready var options_menu: Control = $options_menu as OptionsMenu
@onready var button_manager: Control = $ButtonManager as Control

func _ready() -> void:
	handle_connecting_signals()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Fossil-Fighters/Scenes/world.tscn")


func _on_options_pressed() -> void:
	#print("Open Options Menu")
	button_manager.visible = false
	options_menu.set_process(true)
	options_menu.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()

func on_exit_options_menu() -> void:
	button_manager.visible = true
	options_menu.visible = false

func handle_connecting_signals() -> void:
	options_menu.exit_options_menu.connect(on_exit_options_menu)
