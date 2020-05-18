class_name Ball
extends RigidBody2D

export var min_speed: int
export var max_speed: int
export(Color) var color

var pause_direction: = Vector2.LEFT

signal resumed

func _ready():
	material.set_shader_param("targ_color", color)


func _process(_delta):
	if pause_direction and Input.is_action_just_released("ui_accept"):
		resume()


func _integrate_forces(_state):
	if pause_direction == Vector2.ZERO:
		linear_velocity = linear_velocity.clamped(max_speed)
	
		if linear_velocity.length() < min_speed:
			linear_velocity = linear_velocity.normalized() * min_speed
	else:
		linear_velocity = Vector2.ZERO


func pause():
	pause_direction = linear_velocity


func resume():
	linear_velocity = pause_direction
	pause_direction = Vector2.ZERO
	emit_signal("resumed")
