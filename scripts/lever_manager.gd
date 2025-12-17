extends Node

@export var levers : Array[XRToolsInteractableHinge]
@export var billboard : Node3D
@export var activation_angle := 45.0
@export var deactivation_angle := -45.0

@onready var lever_audio : AudioStreamPlayer3D = $LeverMoveAudio

var active_lever : XRToolsInteractableHinge = null

func _ready():
	for lever in levers:
		lever.move_hinge(deg_to_rad(-45.0))
		lever.hinge_moved.connect(
			func(angle): _on_hinge_moved(lever, angle)
		)

func _on_hinge_moved(lever: XRToolsInteractableHinge, angle: float):
	if not lever_audio.playing:
		lever_audio.play()
	# Activate
	if angle >= activation_angle and active_lever != lever:
		# Deactivate previous
		if active_lever:
			active_lever.move_hinge(active_lever.default_position)

		active_lever = lever

		billboard.show_label(lever.label_id)

	# Deactivate
	elif lever == active_lever and angle <= deactivation_angle:
		active_lever = null
		billboard.hide_labels()
