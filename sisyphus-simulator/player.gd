extends CharacterBody2D

@export var Speed = 600

func _physics_process(delta: float) -> void:
	var direction = Vector2()
	if Input.is_action_pressed("left"):
		direction += Vector2(-1, 1)
	elif Input.is_action_pressed("right"):
		direction += Vector2(1, -1)
	velocity = direction * Speed * delta
	move_and_slide()
