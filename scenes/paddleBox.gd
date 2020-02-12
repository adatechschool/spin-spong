extends RigidBody2D

export var speed = 2000
export var rotation_speed = 9000
onready var myPaddle = get_node("paddle")
var input = 0

func _integrate_forces(state):
	input = int(Input.is_action_pressed("adriel_goes_down")) - \
			int(Input.is_action_pressed("adriel_goes_up"))
	if input:
		applied_force = Vector2(0, input * speed)
		myPaddle.applied_torque = input * rotation_speed
	else:
		applied_force = Vector2(0, 0)
		myPaddle.applied_torque = 0

