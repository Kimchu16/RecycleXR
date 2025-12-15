extends Node

@export var spawn_points : Array[Node3D]
@export var trash_scenes : Array[PackedScene]

var sorted_count := 0
const MAX_TRASH := 6

func _ready():
	spawn_all_trash()

func spawn_all_trash():
	sorted_count = 0

	for point in spawn_points:
		spawn_trash_at(point)

func spawn_trash_at(spawn_point: Node3D):
	if spawn_point.get_child_count() > 0:
		return

	var trash_scene = trash_scenes.pick_random()
	var trash = trash_scene.instantiate()

	spawn_point.add_child(trash)
	trash.global_position = spawn_point.global_position

	trash.sorted_correct.connect(on_trash_sorted)

func on_trash_sorted():
	sorted_count += 1

	if sorted_count >= MAX_TRASH:
		await get_tree().create_timer(0.6).timeout
		spawn_all_trash()
