extends Node2D

@export var chunk1: PackedScene
@export var chunk1_2: PackedScene
var local_chunk1
var chunk_x = -1232
var chunk_y = -617

func _ready() -> void:
	local_chunk1 = chunk1.instantiate()
	add_child(local_chunk1)

func _physics_process(delta: float) -> void:
	var next_chunk1 = chunk1.instantiate()
	next_chunk1.global_position = Vector2(chunk_x, chunk_y)
	add_child(next_chunk1)
	await local_chunk1.chunk_death
	local_chunk1 = next_chunk1
	return
	
