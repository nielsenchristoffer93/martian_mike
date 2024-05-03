extends Control

@export var start_level: PackedScene = null

func _on_start_button_pressed():
	get_tree().change_scene_to_packed(start_level)

func _on_exit_button_pressed():
	get_tree().quit()
