extends Node

const target: = 3
var score: = 0
var locked: = true


func _ready():
	if $ScoreHandlers/ScoreLuc.connect("body_entered", self, "adriel_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreLuc'")

	if $ScoreHandlers/ScoreAdriel.connect("body_entered", self, "luc_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreAdriel'")

	if $ScoreHandlers/ScoreLock.connect("body_entered", self, "reset_lock"):
		printerr("unable to connect 'body_entered' from 'ScoreLock'")

	if $Ball.connect("resumed", $RetroBackground, "reset_display"):
		printerr("unable to connect 'resumed' from 'Ball'")


func _process(delta):
	if Input.is_key_pressed(KEY_R):
		get_tree().reload_current_scene()
	if Input.is_key_pressed(KEY_PLUS):
		score(2)
	if Input.is_key_pressed(KEY_MINUS):
		score(-2)

func adriel_touched(_body: Ball):
	score(-1)


func luc_touched(_body: Ball):
	score(1)


func reset_lock(_body: Ball):
	locked = false
	if abs(score) >= target:
		score = 0
		$Ball.pause()


func score(point):
	if not locked:
		score += point
		locked = true
	$RetroBackground.display_score(float(score) / float(target))
