extends Node

var score:= 0

func restart_game() -> void:
	get_tree().reload_current_scene()

func _input(event) -> void:
	if event.is_action_pressed("pong_restart"):
		restart_game()
