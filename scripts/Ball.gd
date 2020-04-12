class_name GenericBall
extends RigidBody2D

export var min_speed: int
export var max_speed: int
export (Color) var color

func _ready():
	linear_velocity = Vector2.LEFT
	self.material.set_shader_param("targ_color",color)

func _integrate_forces(_state):
	linear_velocity = linear_velocity.clamped(max_speed)

	if linear_velocity.length() < min_speed:
		linear_velocity = linear_velocity.normalized() * min_speed
