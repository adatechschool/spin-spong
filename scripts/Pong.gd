extends Node

func _ready():
	$ScoreLuc.connect("body_entered", self, "adriel_touched")
	$ScoreAdriel.connect("body_entered", self, "luc_touched")
	$ScoreLock.connect("body_entered", self, "reset_lock")


func adriel_touched(_body: GenericBall):
	Score.safe_increase()
	Score.get_score()


func luc_touched(_body: GenericBall):
	Score.safe_decrease()
	Score.get_score()


func reset_lock(_body: GenericBall):
	Score.unlock()
