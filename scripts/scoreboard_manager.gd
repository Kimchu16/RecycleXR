extends Node
class_name ScoreboardManager

signal score_updated(correct, incorrect, total)

var correct := 0
var incorrect := 0
var total := 0

func register_correct():
	correct += 1
	total += 1
	emit_signal("score_updated", correct, incorrect, total)

func register_incorrect():
	incorrect += 1
	total += 1
	emit_signal("score_updated", correct, incorrect, total)

func reset():
	correct = 0
	incorrect = 0
	total = 0
	emit_signal("score_updated", correct, incorrect, total)

func get_accuracy() -> float:
	if total == 0:
		return 0.0
	return float(correct) / float(total)
