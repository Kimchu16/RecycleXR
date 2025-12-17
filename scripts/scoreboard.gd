extends Node3D

@onready var correct_label : Label3D = $CorrectLabel
@onready var incorrect_label : Label3D = $IncorrectLabel
@onready var total_label : Label3D = $TotalLabel
@onready var accuracy_label : Label3D = $AccuracyLabel

@export var scoreboard_manager : Node

func _ready():
	scoreboard_manager.score_updated.connect(_on_score_updated)
	_on_score_updated(
		scoreboard_manager.correct,
		scoreboard_manager.incorrect,
		scoreboard_manager.total
	)

func _on_score_updated(correct: int, incorrect: int, total: int):
	correct_label.text = "Correct: %d" % correct
	incorrect_label.text = "Incorrect: %d" % incorrect
	total_label.text = "Total: %d" % total
	
	var accuracy : float = scoreboard_manager.get_accuracy()
	accuracy_label.text = "Accuracy: %d%%" % int(accuracy * 100.0)
