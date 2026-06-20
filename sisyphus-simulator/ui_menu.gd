extends Control


# play button (goes to ui_wheel.tscn)
func _ready() -> void:
	var play_button = Button
	var settings_button = Button
	


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://ui_wheel.tscn")

@onready var close_button: Button = %closeButton
@onready var panel_container: Panel = %Panel

func _on_pressed_settings() -> void:
	panel_container.visible = true
	close_button.visible = true
	

func _on_close_button_pressed() -> void:
	panel_container.visible = false
	close_button.visible = false
