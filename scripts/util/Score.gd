extends Node


const target := 3
var score := 0
var locked := true


func reset():
	score = 0


func lock():
	locked = true
func unlock():
	locked = false


func increase():
	score += 1
func decrease():
	score -= 1


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
