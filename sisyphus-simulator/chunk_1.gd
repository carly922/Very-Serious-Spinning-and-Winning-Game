extends Node2D

signal chunk_death

func _on_screen_notifier_screen_exited() -> void:
	print("Successful Death!")
	chunk_death.emit()
	queue_free()

func _physics_process(delta: float) -> void:
	position.x -= -400 * delta
	position.y -= -200 * delta
