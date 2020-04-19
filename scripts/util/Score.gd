extends Node


const target := 3
var score := 0
var locked := true


func reset():
	score = 0


func maybe_reset():
	if abs(score) >= target:
		score = 0


func safe_increase():
	change_score_by(1)
	maybe_reset()


func safe_decrease():
	change_score_by(-1)
	maybe_reset()


func change_score_by(a: int):
	if not locked:
		score += a
	lock()


func lock():
	locked = true


func unlock():
	locked = false
