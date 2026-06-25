extends Area2D

@onready var sprite = $sprite

var mouse_hover = false
var is_dragging = false

func _ready() -> void:
	Input.use_accumulated_input = false
	set_process_input(true)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		is_dragging = event


func _process(_delta: float) -> void:
	if is_dragging:
		#how fast mouse is moving- divided it by 100 to make numbers more workable for coding later on
		var mouseSpeed = Input.get_last_mouse_velocity().length() / 100
		var mouse_pos = get_global_mouse_position()
		
		#direction of movement
		var mouseDirection  = (mouse_pos - global_position).normalized()
		
		#direction and speed- good for pushing rocks
		var mouseVelocity = mouseDirection * mouseSpeed
		print(mouseVelocity)
		#mostly for testing, gets sprite to track mouse
		sprite.look_at(sprite.global_position + mouseVelocity)
