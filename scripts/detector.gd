extends Area3D

enum MaterialType {
	PLASTIC,
	PAPER,
	GLASS,
	CARD
}

@export var accepts_material : Array[MaterialType]

func _on_body_entered(body):
	if body.has_method("material_type"):
		if body.material_type == accepts_material:
			body.on_sorted_correctly()
