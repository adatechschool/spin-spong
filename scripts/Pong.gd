extends Node

func _ready():
	if $ScoreHandlers/ScoreLuc.connect("body_entered", self, "adriel_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreLuc'")

	if $ScoreHandlers/ScoreAdriel.connect("body_entered", self, "luc_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreAdriel'")

	if $ScoreHandlers/ScoreLock.connect("body_entered", self, "reset_lock"):
		printerr("unable to connect 'body_entered' from 'ScoreLock'")


func adriel_touched(_body: Ball):
	Score.safe_decrease()
	$RetroBackground.glide_to(float(Score.score) / float(Score.target))


func luc_touched(_body: Ball):
	Score.safe_increase()
	$RetroBackground.glide_to(float(Score.score) / float(Score.target))


func reset_lock(_body: Ball):
	Score.unlock()
