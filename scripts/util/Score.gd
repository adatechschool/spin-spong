extends Node

signal increased
signal decreased
signal reset
signal locked
signal unlocked

const target := 3
var score := 0
var locked := true


func reset():
	score = 0
	emit_signal("reset")
	print(score)


func lock():
	locked = true
	emit_signal("locked")
func unlock():
	locked = false
	emit_signal("unlocked")


func increase():
	score += 1
	emit_signal("increased")
	print(score)
func decrease():
	score -= 1
	emit_signal("decreased")
	print(score)


func safe_increase():
	if not locked:
		self.increase()
	self.lock()
func safe_decrease():
	if not locked:
		self.decrease()
	self.lock()


func increase_did_reach_target() -> bool:
	return score >= target
func decrease_did_reach_target() -> bool:
	return - score >= target
