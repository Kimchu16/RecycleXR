extends Area3D

@onready var correct_audio : AudioStreamPlayer3D = $AudioCorrect
@onready var incorrect_audio : AudioStreamPlayer3D = $AudioIncorrect
@onready var correct_particles : GPUParticles3D = $ParticlesCorrect
@onready var correct_glow : OmniLight3D = $GlowCorrect
@export var accepts_material : Array[MaterialType]

enum MaterialType {
	PLASTIC,
	PAPER,
	GLASS,
	CARD
}

func _ready():
	body_entered.connect(_on_body_entered)
	correct_particles.finished.connect(_on_particles_finished)

func _on_particles_finished():
	correct_glow.visible = false

func _on_body_entered(body):
	if not body.is_in_group("trash"):
		return
	
	if accepts_material.has(body.material_type):
		correct_glow.visible = true
		correct_particles.restart()
		correct_audio.play()
		body.on_sorted_correctly()
	else:
		incorrect_audio.play()
		body.on_sorted_incorrectly()
