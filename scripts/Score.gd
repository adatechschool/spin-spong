extends Node

var score := 0
var locked := true

func increase() -> void:
	score += 1


func decrease() -> void:
	score -= 1


func lock() -> void:
	self.locked = true


func unlock() -> void:
	locked = false

func safe_increase() -> void:
	if not locked:
		self.increase()
		self.lock()

func safe_decrease() -> void:
	if not locked:
		self.decrease()
		self.lock()
