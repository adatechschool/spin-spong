extends CanvasLayer

const speed := 6.0
var target := Vector2.ZERO


func _process(delta):
	$Background.position = \
		$Background.position.linear_interpolate(target, delta * speed)


func display_score(coeff: float):
	target = Vector2(coeff * get_tree().root.size.x / 2, 0)


func reset_display():
	display_score(0)
