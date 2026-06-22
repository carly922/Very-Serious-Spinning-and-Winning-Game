extends Node2D

@export var chunk1: PackedScene
var local_chunk1
var chunk_x = 1152
var chunk_y = 648

func _ready() -> void:
	local_chunk1 = chunk1.instantiate()
	add_child(local_chunk1)

func _physics_process(delta: float) -> void:
	local_chunk1.position.x -= -400 * delta
	local_chunk1.position.y -= -200 * delta
	var next_chunk1 = chunk1.instantiate()
	next_chunk1.position = Vector2(chunk_x, chunk_y)
	add_child(next_chunk1)
	local_chunk1 = next_chunk1
