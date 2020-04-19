extends CanvasLayer


var target = 0


func _process(delta):
	$Background.position.x += (target - $Background.position.x) * 0.1


func glide_to(coeff: float):
	target = coeff * OS.get_window_size().x / 4
