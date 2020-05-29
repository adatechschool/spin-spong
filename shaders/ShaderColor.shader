shader_type canvas_item;

uniform vec4 targ_color = vec4(1,1,1,1);

void fragment() {
	vec4 curr_color = texture(TEXTURE,UV);
	COLOR = targ_color;
	COLOR.w = curr_color.w;
}