extends CanvasLayer


var target = 0


func _process(delta):
	$Background.position.x += (target - $Background.position.x) * 0.1


func display_score(coeff: float):
	target = coeff * get_tree().root.size.x / 2
