extends CanvasLayer


func glide_to(coeff: float):
	$Background.position.x = coeff * OS.get_window_size().x / 4
