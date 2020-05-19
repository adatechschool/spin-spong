class_name Ball
extends RigidBody2D

export var min_speed: int
export var max_speed: int
export(Color) var color


signal resumed

func _ready():
	material.set_shader_param("targ_color", color)

	linear_velocity = Vector2.LEFT
	sleeping = true


func _process(_delta):
	if sleeping and Input.is_action_just_released("ui_accept"):
		linear_velocity += Vector2.ZERO
		emit_signal("resumed")


func _integrate_forces(_state):
	linear_velocity = linear_velocity.clamped(max_speed)

	if linear_velocity.length() < min_speed:
		linear_velocity = linear_velocity.normalized() * min_speed

	var angle = linear_velocity.angle_to(Vector2.UP)
	if angle < PI / 6 and angle > - PI / 6:
		linear_velocity = Vector2.UP * min_speed
	if angle + PI < PI / 6 and angle + PI > - PI / 6:
		linear_velocity = Vector2.DOWN * min_speed
