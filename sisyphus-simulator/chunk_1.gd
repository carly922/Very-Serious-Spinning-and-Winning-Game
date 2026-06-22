extends Node2D


func _on_screen_notifier_screen_exited() -> void:
	print("Successful Death!")
	queue_free()
