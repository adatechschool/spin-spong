extends Area2D

var counter: int

func _on_target_body_entered(_body):
	counter += 1
