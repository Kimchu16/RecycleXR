extends Area3D

@onready var correct_audio : AudioStreamPlayer3D = $AudioCorrect
@onready var incorrect_audio : AudioStreamPlayer3D = $AudioIncorrect
@export var accepts_material : Array[MaterialType]

enum MaterialType {
	PLASTIC,
	PAPER,
	GLASS,
	CARD
}

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if not body.is_in_group("trash"):
		return
	
	if accepts_material.has(body.material_type):
		correct_audio.play()
		body.on_sorted_correctly()
	else:
		incorrect_audio.play()
		body.on_sorted_incorrectly()
