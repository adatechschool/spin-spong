extends Node

func _ready():
	if $ScoreHandlers/ScoreLuc.connect("body_entered", self, "adriel_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreLuc'")

	if $ScoreHandlers/ScoreAdriel.connect("body_entered", self, "luc_touched"):
		printerr("unable to connect 'body_entered' from 'ScoreAdriel'")

	if $ScoreHandlers/ScoreLock.connect("body_entered", self, "reset_lock"):
		printerr("unable to connect 'body_entered' from 'ScoreLock'")

	if Score.connect("reset", $RetroBackground, "reset"):
		printerr("unable to connect 'resetted' to 'RetroBackground'")


func adriel_touched(_body: GenericBall):
	Score.safe_decrease()
	$RetroBackground.glide_to(float(Score.score) / float(Score.target))
	if Score.decrease_did_reach_target():
		Score.reset()


func luc_touched(_body: GenericBall):
	Score.safe_increase()
	$RetroBackground.glide_to(float(Score.score) / float(Score.target))
	if Score.increase_did_reach_target():
		Score.reset()


func reset_lock(_body: GenericBall):
	Score.unlock()
