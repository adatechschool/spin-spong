extends Node

func _ready():
	if $ScoreHandlers/ScoreLuc.connect("body_entered", self, "adriel_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreLuc'")

	if $ScoreHandlers/ScoreAdriel.connect("body_entered", self, "luc_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreAdriel'")

	if $ScoreHandlers/ScoreLock.connect("body_entered", self, "reset_lock"):
		printerr("unable to connect 'body_entered' from 'ScoreLock'")


func adriel_touched(_body: GenericBall):
	Score.safe_increase()


func luc_touched(_body: GenericBall):
	Score.safe_decrease()


func reset_lock(_body: GenericBall):
	Score.unlock()
