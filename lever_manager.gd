extends Node

@export var hinge : XRToolsInteractableHinge
@export var activation_angle := 45.0

var is_active := false

func _ready():
	hinge.hinge_moved.connect(_on_hinge_moved)

func _on_hinge_moved(angle: float):
	if angle >= activation_angle and not is_active:
		is_active = true
		print("LEVER ACTIVATED")
		# emit signal / notify manager here
