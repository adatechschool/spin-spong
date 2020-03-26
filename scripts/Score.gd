extends Node

var score := 0 setget ,get_score
var lock := false

func get_score():
	print(score)

func increase() -> void:
	score += 1

func decrease() -> void:
	score -= 1


func lock() -> void:
	self.lock = true


func unlock() -> void:
	lock = false

func safe_increase() -> void:
	score += int(!lock)
	self.lock()

func safe_decrease() -> void:
	score -= int(!lock)
	self.lock()
