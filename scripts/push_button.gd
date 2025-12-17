extends Node3D

@onready var button := $InteractableAreaButton

@export var scoreboard_manager : Node

func _ready():
	button.button_pressed.connect(_on_button_pressed)

func _on_button_pressed(button):
	scoreboard_manager.reset()
