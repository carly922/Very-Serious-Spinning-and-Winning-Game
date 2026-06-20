extends Area2D


var mouse_hover = false
var is_dragging = false
var prev_mouse_angle
var wheel_rotate_amount: float = 0

func _ready() -> void:
	Input.use_accumulated_input = false
	set_process_input(true)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		mouse_hover = true
		prev_mouse_angle = (get_global_mouse_position() - global_position).angle()
		is_dragging = event
	else:
		mouse_hover = false

func _process(_delta: float) -> void:
	if is_dragging:
		var mouse_velocity = Input.get_last_mouse_velocity()
		var mouse_pos = get_global_mouse_position()
		var mouse_angle = (mouse_pos - $"../../CenterScreen".position).angle()
		var angle_delta = angle_difference(prev_mouse_angle, mouse_angle)
		rotation += angle_delta
		prev_mouse_angle = mouse_angle
