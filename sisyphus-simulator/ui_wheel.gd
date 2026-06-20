extends Area2D

@export var deadzone: float = 30.0
var mouse_hover = false
var is_dragging = false
var prev_mouse_angle
var wheel_rotate_amount: float = 0

func _on_mouse_entered() -> void:
	mouse_hover = true

func _on_mouse_exited() -> void:
	mouse_hover = false

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			prev_mouse_angle = (get_global_mouse_position() - global_position).angle()
			is_dragging = event.pressed

func _physics_process(_delta: float) -> void:
	if is_dragging:
		var mouse_pos = get_global_mouse_position()
		if mouse_pos.distance_to(global_position) > deadzone:
			var mouse_angle = (mouse_pos - global_position).angle()
			var angle_delta = angle_difference(prev_mouse_angle, mouse_angle)
			rotation += angle_delta
			prev_mouse_angle = mouse_angle
