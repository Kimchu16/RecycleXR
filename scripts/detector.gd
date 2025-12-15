extends Area3D

enum MaterialType {
	PLASTIC,
	PAPER,
	GLASS,
	CARD
}

@export var accepts_material : Array[MaterialType]

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	
	if not body.is_in_group("trash"):
		return
	
	if accepts_material.has(body.material_type):
		body.on_sorted_correctly()
	else:
		body.on_sorted_incorrectly()
