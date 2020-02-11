extends RigidBody2D

export var max_speed = 200

func _ready():
	set_axis_velocity(Vector2(100, 100))

func _integrate_forces(_state):
	if linear_velocity.length() > max_speed:
		linear_velocity = linear_velocity.normalized() * max_speed
