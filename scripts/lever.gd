extends XRToolsInteractableHinge

@export var activation_angle := 45.0
var is_active := false

func _ready():
	hinge_moved.connect(_on_hinge_moved)

func _on_hinge_moved(angle: float):
	if angle >= activation_angle and not is_active:
		is_active = true
		emit_signal("lever_activated", self)
