extends XRToolsPickable

signal sorted_correct
signal sorted_incorrect

enum MaterialType {
	PLASTIC,
	PAPER,
	GLASS,
	CARD
}

@export var material_type : MaterialType
@export var label_icon : Texture2D

@onready var icon_sprite : Sprite3D = $Label_Icon

func _ready():
	super._ready() # Run parent ready function
	add_to_group("trash")
	icon_sprite.texture = label_icon
	icon_sprite.visible = false   # hidden until grabbed
	
	grabbed.connect(_on_grabbed)
	released.connect(_on_released)

func _on_grabbed(pickable, by):
	icon_sprite.visible = true

func _on_released(pickable, by):
	icon_sprite.visible = false

func on_sorted_correctly():
	emit_signal("sorted_correct")
	queue_free()

func on_sorted_incorrectly():
	emit_signal("sorted_incorrect") # Use later for feedback fx
	print("Wrong")
	queue_free()
