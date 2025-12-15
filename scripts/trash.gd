extends XRToolsPickable

signal sorted_correct

enum MaterialType {
	PLASTIC,
	PAPER,
	GLASS
}

@export var material_type : MaterialType


func on_sorted_correctly():
	emit_signal("sorted_correct")
	queue_free()
