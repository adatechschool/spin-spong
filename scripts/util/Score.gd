extends Node

var score := 0
var locked := true


func reset():
	score = 0
	print(score)


func increase():
	score += 1
	print(score)


func decrease():
	score -= 1
	print(score)


func lock():
	locked = true


func unlock():
	locked = false


func safe_increase():
	if not locked:
		self.increase()
	self.lock()


func safe_decrease():
	if not locked:
		self.decrease()
	self.lock()
