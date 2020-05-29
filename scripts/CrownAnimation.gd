extends AnimationPlayer


# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 1 second.
func _ready():
	var animation = Animation.new()
	var track_index = animation.add_track(Animation.TYPE_VALUE)
	animation.track_set_path(track_index, "Enemy:position.x")
	animation.track_insert_key(track_index, 0.0, 0)
	animation.track_insert_key(track_index, 0.5, 100)
