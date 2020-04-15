extends ParallaxBackground


func move_left():
	$Background.position.x -= 24 * 3


func move_right():
	$Background.position.x += 24 * 3


func reset():
	$Background.position.x = 0
