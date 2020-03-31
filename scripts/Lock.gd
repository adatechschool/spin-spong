extends RigidBody2D

export var speed := 2000
export var rotation_speed := 9000
export(String) var up
export(String) var down

var input := 0

onready var paddle := $Paddle as PhysicsBody2D

func _integrate_forces(_state):
	input = int(Input.is_action_pressed(down)) - \
			int(Input.is_action_pressed(up))
	applied_force = Vector2(0, input * speed)
	paddle.applied_torque = input * rotation_speed
