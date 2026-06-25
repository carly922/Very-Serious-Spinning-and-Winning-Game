extends CharacterBody2D

@export var Speed = 600

var previous_mouse_dir;

func _ready():
	previous_mouse_dir = (get_global_mouse_position() - global_position).normalized()
	var mouseSpeed = Input.get_last_mouse_velocity().length() / 100
	var mouse_pos = get_global_mouse_position()
	#direction of movement
	var mouseDirection  = (mouse_pos - global_position).normalized()
	#direction and speed- good for pushing rocks
	var mouseVelocity = mouseDirection * mouseSpeed



func _physics_process(delta: float) -> void:
	var current_mouse_dir = (get_global_mouse_position() - global_position).normalized()
	var direction = Vector2()
	if current_mouse_dir.x > previous_mouse_dir.x :
		direction += Vector2(-10, 10)
		
	#BELOW DOES NOT WORK RIGHT
	elif current_mouse_dir.x < previous_mouse_dir.x:
		direction += Vector2(10, -10)
	elif current_mouse_dir == previous_mouse_dir:
		direction += Vector2(0,0)
	velocity = direction * Speed * delta
	move_and_slide()
