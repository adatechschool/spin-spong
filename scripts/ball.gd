extends RigidBody2D

export var max_speed = 300

func _ready():
	set_axis_velocity(max_speed * Vector2.LEFT / 3)

func _integrate_forces(_state):
	if linear_velocity.length() > max_speed:
		linear_velocity = linear_velocity.normalized() * max_speed
