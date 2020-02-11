extends RigidBody2D

export var max_speed = 500

func _integrate_forces(_state):
	if linear_velocity.length() > max_speed:
		set_axis_velocity(linear_velocity.normalized() * max_speed)
