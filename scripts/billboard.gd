extends Node3D

@export var label_textures : Array[Texture2D]
@export var label_texts : Array[Label3D]

@onready var display : Sprite3D = $Display

func _ready():
	hide_labels()

func show_label(label_id: int):
	if label_id < 0 or label_id >= label_textures.size():
		return
	
	if display.visible == false:
		display.visible = true

	display.texture = label_textures[label_id]

	for i in label_texts.size():
		label_texts[i].visible = (i == label_id) # Activate only the chosen label

func hide_labels():
	for label in label_texts:
		label.visible = false
	display.visible = false
