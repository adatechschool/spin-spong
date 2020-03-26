extends Node

var score:= 0

func restart_game():
	get_tree().reload_current_scene()


func touch_adriel(_body):
	print("adriel: ouch!")


func touch_luc(_body):
	print("luc: ouch!")


func _input(event):
	if event.is_action_pressed("pong_restart"):
		restart_game()


func _ready():
	$SpotAdriel.connect("body_entered", self, "touch_adriel")
	$SpotLuc.connect("body_entered", self, "touch_luc")
