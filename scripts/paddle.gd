extends RigidBody2D

var rotation_speed = 9000
var speed = 2000
var input = 0

func _integrate_forces(state):
	input = int(Input.is_action_pressed("adriel_goes_down")) - \
			int(Input.is_action_pressed("adriel_goes_up"))
	if input:
		applied_force = Vector2(0, input * speed)
		applied_torque = input * rotation_speed
	else:
		applied_force = Vector2()
		applied_torque = 0
