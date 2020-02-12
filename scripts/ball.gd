extends RigidBody2D

export var max_speed = 300
export var min_speed = 30

func _ready():
	linear_velocity = Vector2.LEFT * max_speed / 3

func _integrate_forces(_state):
	linear_velocity = linear_velocity.clamped(max_speed)

	if linear_velocity.length() < min_speed:
		linear_velocity = linear_velocity.normalized() * min_speed
